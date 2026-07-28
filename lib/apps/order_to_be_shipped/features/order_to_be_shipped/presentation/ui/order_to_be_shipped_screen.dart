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
      await vm.confirm();
    }
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
                          onFieldSubmitted: (_) => vm.confirm(),
                        ),
                        AppSpacing.gapXl,
                        PrimaryButton(
                          label: 'Confirm Shipment',
                          icon: Icons.check_circle_outline,
                          isLoading: state.isLoading,
                          onPressed: state.canSubmit ? vm.confirm : null,
                        ),
                      ],
                    ),
                  ),
                ),
                AppSpacing.gapLg,
                if (state.status == OrderToBeShippedStatus.success)
                  _SuccessBanner(lines: state.confirmedLines, onReset: vm.reset),
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

class _SuccessBanner extends StatelessWidget {
  const _SuccessBanner({required this.lines, required this.onReset});

  final List<OrderToBeShippedLine> lines;
  final VoidCallback onReset;

  static String _dash(String? value) => (value == null || value.trim().isEmpty) ? '—' : value.trim();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final successColor = isDark ? AppColors.successDark : AppColors.success;
    final header = lines.isNotEmpty ? lines.first : null;

    return Container(
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: successColor.withValues(alpha: 0.08),
        border: Border.all(color: successColor.withValues(alpha: 0.3)),
        borderRadius: AppRadius.brLg,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.check_circle, color: successColor),
              AppSpacing.gapMd,
              Expanded(
                child: Text(
                  header == null
                      ? 'Order confirmed as shipped.'
                      : 'Order ${header.orderNumber} confirmed as shipped '
                          '(${lines.length} line${lines.length == 1 ? '' : 's'}).',
                  style: textTheme.bodyMedium?.copyWith(
                    color: successColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          if (header != null) ...[
            AppSpacing.gapMd,
            Text('Ship To: ${_dash(header.shipToDescription)}', style: textTheme.bodySmall),
            Text('Location: ${_dash(header.location)}', style: textTheme.bodySmall),
            Text(
              'Status: ${_dash(header.lastStatDescription)} → ${_dash(header.nextStatDescription)}',
              style: textTheme.bodySmall,
            ),
            AppSpacing.gapMd,
            const Divider(),
            AppSpacing.gapSm,
            for (final line in lines)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: AppSpacing.xs),
                child: Text(
                  'Line ${line.lineNumber ?? '—'} · ${_dash(line.itemNumberDescription)} · '
                  'Shipped ${line.quantityShipped ?? 0}/${line.quantityOrdered ?? 0} '
                  '${_dash(line.uom)} · Lot ${_dash(line.lotSerialNumber)}',
                  style: textTheme.bodySmall,
                ),
              ),
          ],
          AppSpacing.gapMd,
          OutlinedButton(onPressed: onReset, child: const Text('Scan Next Order')),
        ],
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
