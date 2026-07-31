import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../core/base/base_consumer_state.dart';
import '../../../../../../core/common/widgets/app_text_field.dart';
import '../../../../../../core/common/widgets/exit_confirmation.dart';
import '../../../../../../core/common/widgets/primary_button.dart';
import '../../../../../../core/jde_auth/jde_session_controller.dart';
import '../../../../../../core/scanner/barcode_scanner_screen.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/theme/app_radius.dart';
import '../../../../../../core/theme/app_spacing.dart';
import '../../data/dto/order_to_be_shipped_line.dart';
import '../state/order_to_be_shipped_state.dart';
import '../view_model/order_to_be_shipped_view_model.dart';

/// Order to be Shipped screen.
///
/// Shipment labels carry one barcode encoding Order Company, Order Type and
/// Order Number together — the "Scan Order Barcode" button reads it once
/// and fills all three fields. Each field also stays keyboard-wedge and
/// manual-entry friendly on its own, in case only part of the label is
/// scannable or a value needs correcting.
class OrderToBeShippedScreen extends ConsumerStatefulWidget {
  const OrderToBeShippedScreen({super.key});

  @override
  ConsumerState<OrderToBeShippedScreen> createState() => _OrderToBeShippedScreenState();
}

class _OrderToBeShippedScreenState extends BaseConsumerState<OrderToBeShippedScreen> {
  final _orderCompanyController = TextEditingController();
  final _orderTypeController = TextEditingController();
  final _orderNumberController = TextEditingController();

  @override
  void dispose() {
    _orderCompanyController.dispose();
    _orderTypeController.dispose();
    _orderNumberController.dispose();
    super.dispose();
  }

  void _syncControllers(OrderToBeShippedState state) {
    if (_orderCompanyController.text != state.orderCompany) {
      _orderCompanyController.text = state.orderCompany;
    }
    if (_orderTypeController.text != state.orderType) {
      _orderTypeController.text = state.orderType;
    }
    if (_orderNumberController.text != state.orderNumber) {
      _orderNumberController.text = state.orderNumber;
    }
  }

  Future<void> _scanBarcode() async {
    final result = await showBarcodeScanner(context, title: 'Scan Order Barcode');
    if (result == null || result.isEmpty || !mounted) return;

    final vm = ref.read(orderToBeShippedViewModelProvider.notifier);
    final parsed = vm.applyScannedBarcode(result);
    if (parsed) {
      await vm.fetchDetails();
    }
  }

  /// Runs the confirm-shipment call, then always shows a result popup
  /// (success or failure) and clears the screen back to the search form so
  /// the user can look up another order — regardless of which way it went.
  Future<void> _confirmShipment() async {
    final vm = ref.read(orderToBeShippedViewModelProvider.notifier);
    await vm.confirmShipment();
    if (!mounted) return;

    final result = ref.read(orderToBeShippedViewModelProvider);
    final isSuccess = result.shipmentConfirmed;

    await showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        icon: Icon(
          isSuccess ? Icons.check_circle : Icons.error_outline,
          color: isSuccess
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.error,
        ),
        title: Text(isSuccess ? 'Shipment Confirmed' : 'Confirmation Failed'),
        content: Text(
          isSuccess
              ? 'The shipment was confirmed successfully.'
              : (result.errorMessage.isEmpty
                  ? 'Confirmation failed. Please try again.'
                  : result.errorMessage),
        ),
        actions: [
          FilledButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );

    if (!mounted) return;
    vm.reset();
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

    if (shouldLogout != true) return;

    final success = await ref.read(jdeSessionControllerProvider.notifier).logout();
    // The router's redirect (driven by JdeSessionController) sends the user
    // back to /login automatically — but only when the API confirmed the
    // logout (HTTP 200). On failure the session stays active; surface why
    // so the user can retry.
    if (!success && mounted) {
      final message = ref.read(jdeSessionControllerProvider).errorMessage;
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(SnackBar(content: Text(message.isEmpty ? 'Logout failed.' : message)));
    }
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final state = ref.watch(orderToBeShippedViewModelProvider);
    final vm = ref.read(orderToBeShippedViewModelProvider.notifier);
    _syncControllers(state);

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop) confirmExitApp(context);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.local_shipping_outlined, color: scheme.primary, size: 22),
              AppSpacing.gapSm,
              const Text('Order to be Shipped'),
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.logout),
              tooltip: 'Log out',
              onPressed: _logout,
            ),
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: AppSpacing.pagePadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(AppSpacing.lg),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.tune, size: 18, color: scheme.primary),
                            AppSpacing.gapSm,
                            Text(
                              'Shipment Details',
                              style: textTheme.labelLarge?.copyWith(color: scheme.onSurface),
                            ),
                          ],
                        ),
                        AppSpacing.gapLg,
                        PrimaryButton(
                          label: 'Scan Order Barcode',
                          icon: Icons.qr_code_scanner,
                          onPressed: _scanBarcode,
                        ),
                        AppSpacing.gapLg,
                        AppTextField(
                          label: 'Order Company',
                          hint: 'e.g. 00119',
                          controller: _orderCompanyController,
                          textInputAction: TextInputAction.next,
                          onChanged: vm.updateOrderCompany,
                        ),
                        AppSpacing.gapLg,
                        AppTextField(
                          label: 'Order Type',
                          hint: 'e.g. S0',
                          controller: _orderTypeController,
                          textInputAction: TextInputAction.next,
                          textCapitalization: TextCapitalization.characters,
                          onChanged: vm.updateOrderType,
                        ),
                        AppSpacing.gapLg,
                        AppTextField(
                          label: 'Order Number',
                          hint: 'e.g. 2600008',
                          controller: _orderNumberController,
                          textInputAction: TextInputAction.done,
                          onChanged: vm.updateOrderNumber,
                          onFieldSubmitted: (_) => vm.fetchDetails(),
                        ),
                        AppSpacing.gapXl,
                        PrimaryButton(
                          label: 'Get Shipment Details',
                          icon: Icons.search,
                          isLoading: state.isLoading,
                          onPressed: state.canSubmit ? vm.fetchDetails : null,
                        ),
                      ],
                    ),
                  ),
                ),
                AppSpacing.gapLg,
                if (state.status == OrderToBeShippedStatus.success)
                  _ShipmentDetailsCard(
                    lines: state.confirmedLines,
                    isConfirming: state.isConfirmingShipment,
                    isConfirmed: state.shipmentConfirmed,
                    canConfirm: state.canConfirmShipment,
                    onQuantityChanged: vm.updateLineQuantity,
                    onConfirmShipment: _confirmShipment,
                    onReset: vm.reset,
                  ),
                if (state.status == OrderToBeShippedStatus.error)
                  _ErrorBanner(message: state.errorMessage),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// Order summary + shipment grid, shown after a successful fetch. Styled as
/// a plain elevated card (not a colored banner) with a small status badge —
/// color is used sparingly (badge + a couple of icons) rather than washing
/// the whole panel, which is what made the old "confirmed" green look loud.
class _ShipmentDetailsCard extends StatelessWidget {
  const _ShipmentDetailsCard({
    required this.lines,
    required this.isConfirming,
    required this.isConfirmed,
    required this.canConfirm,
    required this.onQuantityChanged,
    required this.onConfirmShipment,
    required this.onReset,
  });

  final List<OrderToBeShippedLine> lines;
  final bool isConfirming;
  final bool isConfirmed;
  final bool canConfirm;
  final void Function(num lineNumber, num newQuantity) onQuantityChanged;
  final VoidCallback onConfirmShipment;
  final VoidCallback onReset;

  static String _dash(String? value) => (value == null || value.trim().isEmpty) ? '—' : value.trim();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final header = lines.isNotEmpty ? lines.first : null;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    header == null ? 'Shipment Details' : 'Order ${header.orderNumber}',
                    style: textTheme.headlineSmall,
                  ),
                ),
                AppSpacing.gapMd,
                _StatusBadge(isConfirmed: isConfirmed),
              ],
            ),
            if (header != null) ...[
              AppSpacing.gapMd,
              Wrap(
                spacing: AppSpacing.sm,
                runSpacing: AppSpacing.sm,
                children: [
                  _StatChip(icon: Icons.person_outline, label: _dash(header.shipToDescription)),
                  _StatChip(
                    icon: Icons.sync_alt,
                    label: '${_dash(header.lastStatDescription)} → ${_dash(header.nextStatDescription)}',
                  ),
                  _StatChip(
                    icon: Icons.inventory_2_outlined,
                    label: '${lines.length} line${lines.length == 1 ? '' : 's'}',
                  ),
                ],
              ),
              AppSpacing.gapLg,
              _ShipmentDetailsGrid(
                lines: lines,
                editable: !isConfirmed,
                onQuantityChanged: onQuantityChanged,
              ),
            ],
            AppSpacing.gapLg,
            if (isConfirmed)
              OutlinedButton(onPressed: onReset, child: const Text('Scan Next Order'))
            else
              PrimaryButton(
                label: 'Confirm Shipment',
                icon: Icons.check_circle_outline,
                isLoading: isConfirming,
                onPressed: canConfirm ? onConfirmShipment : null,
              ),
          ],
        ),
      ),
    );
  }
}

class _StatusBadge extends StatelessWidget {
  const _StatusBadge({required this.isConfirmed});

  final bool isConfirmed;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    // Green is reserved for this one small "done" badge — everything else
    // (including the "pending review" state) stays neutral/primary.
    final color = isConfirmed ? (isDark ? AppColors.successDark : AppColors.success) : scheme.primary;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md, vertical: AppSpacing.xs),
      decoration: BoxDecoration(color: color.withValues(alpha: 0.1), borderRadius: AppRadius.brFull),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(isConfirmed ? Icons.check_circle : Icons.pending_outlined, size: 14, color: color),
          const SizedBox(width: 4),
          Text(
            isConfirmed ? 'Confirmed' : 'Pending review',
            style: textTheme.labelSmall?.copyWith(color: color, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}

class _StatChip extends StatelessWidget {
  const _StatChip({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md, vertical: AppSpacing.xs),
      decoration: BoxDecoration(
        color: isDark ? AppColors.fillDark : AppColors.gray6,
        borderRadius: AppRadius.brFull,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: scheme.onSurface.withValues(alpha: 0.6)),
          const SizedBox(width: 4),
          Text(label, style: textTheme.labelSmall),
        ],
      ),
    );
  }
}

/// Shipment line details as a scrollable grid — mirrors the Location
/// Availability Inquiry app's results grid for a consistent look, but
/// consolidated to 6 columns (item code+description, location+lot, and
/// ordered/canceled folded together) instead of listing every raw API field
/// as its own column. The "Shipped" column is the one editable cell.
class _ShipmentDetailsGrid extends StatelessWidget {
  const _ShipmentDetailsGrid({
    required this.lines,
    required this.editable,
    required this.onQuantityChanged,
  });

  final List<OrderToBeShippedLine> lines;
  final bool editable;
  final void Function(num lineNumber, num newQuantity) onQuantityChanged;

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
            columnSpacing: 28,
            horizontalMargin: 16,
            dataRowMinHeight: 60,
            dataRowMaxHeight: 76,
            columns: const [
              DataColumn(label: Text('Line')),
              DataColumn(label: Text('Item')),
              DataColumn(label: Text('Location')),
              DataColumn(label: Text('Ordered'), numeric: true),
              DataColumn(label: Text('Shipped'), numeric: true),
              DataColumn(label: Text('Status')),
            ],
            rows: [
              for (final indexed in lines.asMap().entries)
                DataRow(
                  color: WidgetStateProperty.all(
                    indexed.key.isEven ? scheme.surface : zebraColor,
                  ),
                  cells: [
                    DataCell(Text('${indexed.value.lineNumber ?? '—'}')),
                    DataCell(
                      SizedBox(
                        width: 190,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              _dash(indexed.value.itemNumber),
                              style: textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
                            ),
                            Text(
                              _dash(indexed.value.itemNumberDescription),
                              style: textTheme.bodySmall,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ],
                        ),
                      ),
                    ),
                    DataCell(
                      SizedBox(
                        width: 120,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(_dash(indexed.value.location), style: textTheme.bodyMedium),
                            Text('Lot ${_dash(indexed.value.lotSerialNumber)}', style: textTheme.bodySmall),
                          ],
                        ),
                      ),
                    ),
                    DataCell(Text('${indexed.value.quantityOrdered ?? 0} ${_dash(indexed.value.uom)}')),
                    DataCell(
                      _EditableQuantityCell(
                        line: indexed.value,
                        editable: editable,
                        onChanged: (newQuantity) =>
                            onQuantityChanged(indexed.value.lineNumber ?? 0, newQuantity),
                      ),
                    ),
                    DataCell(_LineStatusIndicator(line: indexed.value)),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Backordered/canceled quantities only take up visual space when they're
/// actually non-zero — the common all-fulfilled case just shows a quiet
/// checkmark instead of two more "0" columns.
class _LineStatusIndicator extends StatelessWidget {
  const _LineStatusIndicator({required this.line});

  final OrderToBeShippedLine line;

  @override
  Widget build(BuildContext context) {
    final backordered = line.quantityBackordered ?? 0;
    final canceled = line.quantityCanceled ?? 0;
    final scheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    if (backordered <= 0 && canceled <= 0) {
      return Icon(Icons.check_circle_outline, size: 18, color: scheme.onSurface.withValues(alpha: 0.3));
    }

    final warningColor = isDark ? AppColors.warningDark : AppColors.warning;
    final label = [
      if (backordered > 0) '$backordered backordered',
      if (canceled > 0) '$canceled canceled',
    ].join(' · ');

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.warning_amber_rounded, size: 16, color: warningColor),
        const SizedBox(width: 4),
        Flexible(child: Text(label, style: textTheme.bodySmall, overflow: TextOverflow.ellipsis)),
      ],
    );
  }
}

/// The one editable grid cell. Owns its own [TextEditingController] and
/// validates locally (can't exceed [OrderToBeShippedLine.quantityOrdered] or
/// go negative) before reporting a change up via [onChanged].
class _EditableQuantityCell extends StatefulWidget {
  const _EditableQuantityCell({
    required this.line,
    required this.editable,
    required this.onChanged,
  });

  final OrderToBeShippedLine line;
  final bool editable;
  final ValueChanged<num> onChanged;

  @override
  State<_EditableQuantityCell> createState() => _EditableQuantityCellState();
}

class _EditableQuantityCellState extends State<_EditableQuantityCell> {
  late final TextEditingController _controller;
  String? _error;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: '${widget.line.quantityShipped ?? 0}');
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onSubmitted(String value) {
    final maxQuantity = widget.line.quantityOrdered ?? 0;
    final parsed = num.tryParse(value.trim());

    if (parsed == null || parsed < 0) {
      setState(() => _error = 'Invalid');
      return;
    }
    if (parsed > maxQuantity) {
      setState(() => _error = 'Max $maxQuantity');
      return;
    }

    setState(() => _error = null);
    widget.onChanged(parsed);
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return SizedBox(
      width: 76,
      child: TextField(
        controller: _controller,
        enabled: widget.editable,
        keyboardType: const TextInputType.numberWithOptions(decimal: false),
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          isDense: true,
          errorText: _error,
          contentPadding: const EdgeInsets.symmetric(horizontal: AppSpacing.sm, vertical: AppSpacing.sm),
        ),
        onSubmitted: _onSubmitted,
        onTapOutside: (_) => _onSubmitted(_controller.text),
        style: TextStyle(color: _error != null ? scheme.error : null),
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
              message.isEmpty ? 'Confirmation failed. Please try again.' : message,
              style: textTheme.bodyMedium?.copyWith(color: scheme.error),
            ),
          ),
        ],
      ),
    );
  }
}
