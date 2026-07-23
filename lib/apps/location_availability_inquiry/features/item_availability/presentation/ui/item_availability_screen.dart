import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../core/base/base_consumer_state.dart';
import '../../../../../../core/common/widgets/app_text_field.dart';
import '../../../../../../core/common/widgets/exit_confirmation.dart';
import '../../../../../../core/common/widgets/primary_button.dart';
import '../../../../../../core/local_auth/local_session_controller.dart';
import '../../../../../../core/scanner/barcode_scanner_screen.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/theme/app_radius.dart';
import '../../../../../../core/theme/app_spacing.dart';
import '../../data/dto/item_availability_row.dart';
import '../state/item_availability_state.dart';
import '../view_model/item_availability_view_model.dart';

/// Location Availability Inquiry screen.
///
/// The Location field is scan-gun friendly: Zebra scanners act as a keyboard
/// wedge, typing the barcode into whichever field has focus and terminating
/// with Enter. Branch Plant can be scanned or typed manually. Results render
/// as a grid matching the client's reference layout (Item / Description /
/// 3rd Item / UOM / Lot / Lot Exp Date / Manufacturing Date / Lot Status /
/// Qty On Hand / Qty Available).
class ItemAvailabilityScreen extends ConsumerStatefulWidget {
  const ItemAvailabilityScreen({super.key});

  @override
  ConsumerState<ItemAvailabilityScreen> createState() => _ItemAvailabilityScreenState();
}

class _ItemAvailabilityScreenState extends BaseConsumerState<ItemAvailabilityScreen> {
  final _businessUnitController = TextEditingController();
  final _locationController = TextEditingController();
  final _businessUnitFocusNode = FocusNode();
  final _locationFocusNode = FocusNode();

  /// Manual override so the wide/grid-optimized layout is reachable even
  /// when the device's physical rotation is locked. `null` = follow the
  /// device's actual orientation.
  bool? _forceWideLayout;

  @override
  void initState() {
    super.initState();
    // Allow free rotation by default so physical turning still works;
    // _toggleLayout below overrides this with an explicit lock when the
    // user forces a layout via the button instead.
    SystemChrome.setPreferredOrientations(DeviceOrientation.values);
  }

  /// Toggling doesn't just swap the layout — it actually re-orients the
  /// screen via [SystemChrome], which takes priority over the OS-level
  /// auto-rotate lock. Without this, forcing "wide" while the device is
  /// physically portrait (and auto-rotate off) just rearranges fields
  /// inside a still-portrait frame instead of truly rotating.
  void _toggleLayout(bool currentIsWide) {
    final nextIsWide = !currentIsWide;
    setState(() => _forceWideLayout = nextIsWide);
    SystemChrome.setPreferredOrientations(
      nextIsWide
          ? [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]
          : [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
    );
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations(DeviceOrientation.values);
    _businessUnitController.dispose();
    _locationController.dispose();
    _businessUnitFocusNode.dispose();
    _locationFocusNode.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    FocusScope.of(context).unfocus();
    final vm = ref.read(itemAvailabilityViewModelProvider.notifier);
    await vm.search();
    // Ready the location field for the next scan without losing the branch.
    _locationController.clear();
    vm.prepareForNextScan();
    if (mounted) _locationFocusNode.requestFocus();
  }

  Future<void> _scanLocation() async {
    final result = await showBarcodeScanner(context, title: 'Scan Location');
    if (result == null || result.isEmpty || !mounted) return;

    _locationController.text = result;
    ref.read(itemAvailabilityViewModelProvider.notifier).updateLocation(result);
    await _submit();
  }

  Future<void> _scanBranchPlant() async {
    final result = await showBarcodeScanner(context, title: 'Scan Branch Plant');
    if (result == null || result.isEmpty || !mounted) return;

    _businessUnitController.text = result;
    ref.read(itemAvailabilityViewModelProvider.notifier).updateBusinessUnit(result);
    _locationFocusNode.requestFocus();
  }

  Future<void> _logout() async {
    final shouldLogout = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Log Out'),
        content: const Text('You will need to sign in again to use this app.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('Log Out'),
          ),
        ],
      ),
    );

    if (shouldLogout == true) {
      await ref.read(localSessionControllerProvider.notifier).logout();
      // The router's redirect (driven by LocalSessionController) sends the
      // user back to /login automatically once the session state changes.
    }
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final state = ref.watch(itemAvailabilityViewModelProvider);
    final vm = ref.read(itemAvailabilityViewModelProvider.notifier);

    final physicalOrientation = MediaQuery.of(context).orientation;
    final isWide = _forceWideLayout ?? (physicalOrientation == Orientation.landscape);

    return PopScope(
      // Never pop back to /login — only Logout should return there.
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop) confirmExitApp(context);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.location_searching, color: scheme.primary, size: 22),
              AppSpacing.gapSm,
              const Text('Location Availability Inquiry'),
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(isWide ? Icons.stay_current_portrait : Icons.stay_current_landscape),
              tooltip: isWide ? 'Switch to portrait layout' : 'Switch to landscape layout',
              onPressed: () => _toggleLayout(isWide),
            ),
            IconButton(
              icon: const Icon(Icons.logout),
              tooltip: 'Log out',
              onPressed: _logout,
            ),
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: AppSpacing.pagePadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _SearchPanel(
                  isWide: isWide,
                  businessUnitController: _businessUnitController,
                  locationController: _locationController,
                  businessUnitFocusNode: _businessUnitFocusNode,
                  locationFocusNode: _locationFocusNode,
                  state: state,
                  onBranchChanged: vm.updateBusinessUnit,
                  onLocationChanged: vm.updateLocation,
                  onLocationSubmitted: (_) => _submit(),
                  onBranchSubmitted: (_) => _locationFocusNode.requestFocus(),
                  onSearch: _submit,
                  onScanLocation: _scanLocation,
                  onScanBranchPlant: _scanBranchPlant,
                ),
                AppSpacing.gapLg,
                Expanded(child: _ResultsPanel(state: state, isWide: isWide)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SearchPanel extends StatelessWidget {
  const _SearchPanel({
    required this.isWide,
    required this.businessUnitController,
    required this.locationController,
    required this.businessUnitFocusNode,
    required this.locationFocusNode,
    required this.state,
    required this.onBranchChanged,
    required this.onLocationChanged,
    required this.onLocationSubmitted,
    required this.onBranchSubmitted,
    required this.onSearch,
    required this.onScanLocation,
    required this.onScanBranchPlant,
  });

  final bool isWide;
  final TextEditingController businessUnitController;
  final TextEditingController locationController;
  final FocusNode businessUnitFocusNode;
  final FocusNode locationFocusNode;
  final ItemAvailabilityState state;
  final ValueChanged<String> onBranchChanged;
  final ValueChanged<String> onLocationChanged;
  final ValueChanged<String> onLocationSubmitted;
  final ValueChanged<String> onBranchSubmitted;
  final VoidCallback onSearch;
  final VoidCallback onScanLocation;
  final VoidCallback onScanBranchPlant;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    final branchField = AppTextField(
      label: 'Branch Plant',
      hint: 'Scan or enter branch plant',
      controller: businessUnitController,
      focusNode: businessUnitFocusNode,
      textInputAction: TextInputAction.next,
      isDense: isWide,
      suffix: IconButton(
        icon: Icon(Icons.qr_code_scanner, color: scheme.primary),
        tooltip: 'Scan branch plant',
        onPressed: onScanBranchPlant,
      ),
      onChanged: onBranchChanged,
      onFieldSubmitted: onBranchSubmitted,
    );

    final locationField = AppTextField(
      label: 'Location',
      hint: 'Scan or enter location',
      controller: locationController,
      focusNode: locationFocusNode,
      autofocus: true,
      textInputAction: TextInputAction.done,
      isDense: isWide,
      suffix: IconButton(
        icon: Icon(Icons.qr_code_scanner, color: scheme.primary),
        tooltip: 'Scan location',
        onPressed: onScanLocation,
      ),
      onChanged: onLocationChanged,
      onFieldSubmitted: onLocationSubmitted,
    );

    // Landscape: a single compact inline bar, so the results grid keeps
    // most of the screen instead of a tall search card.
    if (isWide) {
      return Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg, vertical: AppSpacing.sm),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(child: branchField),
              AppSpacing.gapMd,
              Expanded(child: locationField),
              AppSpacing.gapMd,
              IconButton.filled(
                icon: state.isLoading
                    ? SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(strokeWidth: 2.5, color: scheme.onPrimary),
                      )
                    : const Icon(Icons.search),
                tooltip: 'Search',
                onPressed: state.canSubmit ? onSearch : null,
              ),
            ],
          ),
        ),
      );
    }

    final textTheme = Theme.of(context).textTheme;
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Icon(Icons.tune, size: 18, color: scheme.primary),
                AppSpacing.gapSm,
                Text('Search Criteria', style: textTheme.labelLarge?.copyWith(color: scheme.onSurface)),
              ],
            ),
            AppSpacing.gapLg,
            LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth >= 480) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: branchField),
                      AppSpacing.gapLg,
                      Expanded(child: locationField),
                    ],
                  );
                }
                return Column(
                  children: [branchField, AppSpacing.gapLg, locationField],
                );
              },
            ),
            AppSpacing.gapLg,
            PrimaryButton(
              label: 'Search',
              icon: Icons.search,
              isLoading: state.isLoading,
              onPressed: state.canSubmit ? onSearch : null,
            ),
          ],
        ),
      ),
    );
  }
}

class _ResultsPanel extends StatelessWidget {
  const _ResultsPanel({required this.state, required this.isWide});

  final ItemAvailabilityState state;
  final bool isWide;

  @override
  Widget build(BuildContext context) {
    if (state.status == ItemAvailabilityStatus.idle) {
      return const _EmptyState(
        icon: Icons.qr_code_scanner_outlined,
        message: 'Enter or scan a Branch Plant and Location to look up item availability.',
      );
    }

    if (state.isLoading) {
      return const Center(child: CupertinoActivityIndicator());
    }

    if (state.status == ItemAvailabilityStatus.error) {
      return _ErrorBanner(message: state.errorMessage);
    }

    if (state.rows.isEmpty) {
      return const _EmptyState(
        icon: Icons.inventory_2_outlined,
        message: 'No items found for this location.',
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _ResultsSummary(count: state.rows.length),
        AppSpacing.gapMd,
        Expanded(child: _ResultsGrid(rows: state.rows, isWide: isWide)),
      ],
    );
  }
}

class _ResultsSummary extends StatelessWidget {
  const _ResultsSummary({required this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md, vertical: AppSpacing.sm),
      decoration: BoxDecoration(
        color: scheme.primary.withValues(alpha: 0.08),
        borderRadius: AppRadius.brFull,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.inventory_2_outlined, size: 16, color: scheme.primary),
          AppSpacing.gapXs,
          Text(
            '$count record${count == 1 ? '' : 's'} found',
            style: textTheme.labelMedium?.copyWith(color: scheme.primary),
          ),
        ],
      ),
    );
  }
}

class _ResultsGrid extends StatelessWidget {
  const _ResultsGrid({required this.rows, required this.isWide});

  final List<ItemAvailabilityRow> rows;
  final bool isWide;

  static String _dash(String? value) => (value == null || value.trim().isEmpty) ? '—' : value.trim();

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final zebraColor = isDark ? AppColors.fillDark : AppColors.gray6;

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: scheme.outline),
        borderRadius: AppRadius.brLg,
      ),
      clipBehavior: Clip.antiAlias,
      child: SingleChildScrollView(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            headingRowColor: WidgetStateProperty.all(scheme.primary.withValues(alpha: 0.06)),
            headingTextStyle: textTheme.labelMedium?.copyWith(
              color: scheme.primary,
              fontWeight: FontWeight.w700,
            ),
            dataTextStyle: textTheme.bodyMedium,
            // Wide/landscape layout tightens spacing so all columns fit
            // without a horizontal scroll on typical device widths.
            columnSpacing: isWide ? 20 : 28,
            horizontalMargin: isWide ? 12 : 16,
            columns: const [
              DataColumn(label: Text('Item')),
              DataColumn(label: Text('Description')),
              DataColumn(label: Text('3rd Item')),
              DataColumn(label: Text('UOM')),
              DataColumn(label: Text('Lot')),
              DataColumn(label: Text('Lot Exp Date')),
              DataColumn(label: Text('Manufacturing Date')),
              DataColumn(label: Text('Lot Status')),
              DataColumn(label: Text('Qty On Hand'), numeric: true),
              DataColumn(label: Text('Qty Available'), numeric: true),
            ],
            rows: [
              for (final indexed in rows.asMap().entries)
                DataRow(
                  color: WidgetStateProperty.all(
                    indexed.key.isEven ? scheme.surface : zebraColor,
                  ),
                  cells: [
                    DataCell(Text(_dash(indexed.value.secondItemNumber))),
                    DataCell(
                      isWide
                          ? Text(_dash(indexed.value.description), overflow: TextOverflow.ellipsis)
                          : SizedBox(
                              width: 220,
                              child: Text(
                                _dash(indexed.value.description),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                    ),
                    DataCell(Text(_dash(indexed.value.thirdItemNumber))),
                    DataCell(Text(_dash(indexed.value.secondaryUnitOfMeasure))),
                    DataCell(Text(_dash(indexed.value.lotSerial))),
                    DataCell(Text(_dash(indexed.value.lotExpirationDate))),
                    DataCell(Text(_dash(indexed.value.lotManufacturingDate))),
                    DataCell(Text(_dash(indexed.value.lotStatus))),
                    DataCell(Text('${indexed.value.quantityOnHand}')),
                    DataCell(
                      Text(
                        '${indexed.value.quantityAvailable}',
                        style: textTheme.bodyMedium?.copyWith(
                          color: indexed.value.quantityAvailable > 0
                              ? (isDark ? AppColors.successDark : AppColors.success)
                              : (isDark ? AppColors.errorDark : AppColors.error),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState({required this.icon, required this.message});

  final IconData icon;
  final String message;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.xxl),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 56, color: AppColors.gray3),
            AppSpacing.gapLg,
            Text(
              message,
              style: textTheme.bodyMedium?.copyWith(color: AppColors.gray1),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class _ErrorBanner extends StatelessWidget {
  const _ErrorBanner({required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Container(
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: scheme.error.withValues(alpha: 0.08),
        border: Border.all(color: scheme.error.withValues(alpha: 0.3)),
        borderRadius: AppRadius.brLg,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.error_outline, color: scheme.error),
          AppSpacing.gapMd,
          Expanded(
            child: Text(
              message.isEmpty ? 'Lookup failed. Please try again.' : message,
              style: textTheme.bodyMedium?.copyWith(color: scheme.error),
            ),
          ),
        ],
      ),
    );
  }
}
