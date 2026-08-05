import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../core/ble/ble_broadcast_controller.dart';
import '../../../../../../core/ble/ble_broadcast_state.dart';
import '../../../../../../core/common/widgets/app_text_field.dart';
import '../../../../../../core/common/widgets/primary_button.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/theme/app_radius.dart';
import '../../../../../../core/theme/app_spacing.dart';

/// Lets the user start/stop BLE advertising to the desktop companion app,
/// see the live connection status, and manually send a test barcode.
///
/// The same "Send to Desktop" action also appears on the Order to be
/// Shipped screen once an order's details are fetched — this screen is for
/// establishing the connection and for ad-hoc sends.
class BroadcastScreen extends ConsumerStatefulWidget {
  const BroadcastScreen({super.key});

  @override
  ConsumerState<BroadcastScreen> createState() => _BroadcastScreenState();
}

class _BroadcastScreenState extends ConsumerState<BroadcastScreen> {
  final _orderTypeController = TextEditingController();
  final _orderNumberController = TextEditingController();
  final _pickNumberController = TextEditingController();

  @override
  void dispose() {
    _orderTypeController.dispose();
    _orderNumberController.dispose();
    _pickNumberController.dispose();
    super.dispose();
  }

  Future<void> _sendTestBarcode() async {
    final payload = [
      _orderTypeController.text.trim(),
      _orderNumberController.text.trim(),
      _pickNumberController.text.trim(),
    ].join('-');

    final success = await ref.read(bleBroadcastControllerProvider.notifier).send(payload);
    if (!mounted) return;
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(content: Text(success ? 'Sent "$payload" to desktop.' : 'Send failed.')),
      );
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final state = ref.watch(bleBroadcastControllerProvider);
    final controller = ref.read(bleBroadcastControllerProvider.notifier);
    final canSendTest = state.isConnected &&
        _orderTypeController.text.trim().isNotEmpty &&
        _orderNumberController.text.trim().isNotEmpty &&
        _pickNumberController.text.trim().isNotEmpty;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.bluetooth, color: scheme.primary, size: 22),
            AppSpacing.gapSm,
            const Text('Connect to Desktop'),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: AppSpacing.pagePadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _StatusCard(state: state, onStart: controller.startAdvertising, onStop: controller.stopAdvertising),
              AppSpacing.gapLg,
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(AppSpacing.lg),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.send_outlined, size: 18, color: scheme.primary),
                          AppSpacing.gapSm,
                          Text('Send a Test Barcode', style: Theme.of(context).textTheme.labelLarge),
                        ],
                      ),
                      AppSpacing.gapSm,
                      Text(
                        'Formatted as Order Type-Order Number-Pick Number and sent once the '
                        'desktop is connected.',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      AppSpacing.gapLg,
                      AppTextField(
                        label: 'Order Type',
                        hint: 'e.g. SO',
                        controller: _orderTypeController,
                        textInputAction: TextInputAction.next,
                        textCapitalization: TextCapitalization.characters,
                        onChanged: (_) => setState(() {}),
                      ),
                      AppSpacing.gapLg,
                      AppTextField(
                        label: 'Order Number',
                        hint: 'e.g. 26000008',
                        controller: _orderNumberController,
                        textInputAction: TextInputAction.next,
                        onChanged: (_) => setState(() {}),
                      ),
                      AppSpacing.gapLg,
                      AppTextField(
                        label: 'Pick Number',
                        hint: 'e.g. 00119',
                        controller: _pickNumberController,
                        textInputAction: TextInputAction.done,
                        onChanged: (_) => setState(() {}),
                        onFieldSubmitted: (_) => canSendTest ? _sendTestBarcode() : null,
                      ),
                      AppSpacing.gapXl,
                      PrimaryButton(
                        label: 'Send to Desktop',
                        icon: Icons.send,
                        isLoading: state.isSending,
                        onPressed: canSendTest ? _sendTestBarcode : null,
                      ),
                      if (state.lastSentPayload != null) ...[
                        AppSpacing.gapMd,
                        Text(
                          'Last sent: ${state.lastSentPayload}',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _StatusCard extends ConsumerWidget {
  const _StatusCard({required this.state, required this.onStart, required this.onStop});

  final BleBroadcastState state;
  final VoidCallback onStart;
  final VoidCallback onStop;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final successColor = isDark ? AppColors.successDark : AppColors.success;

    final (icon, color, title, subtitle) = switch (state.status) {
      BleBroadcastStatus.unknown => (
          Icons.bluetooth_searching,
          scheme.onSurface.withValues(alpha: 0.4),
          'Checking Bluetooth…',
          '',
        ),
      BleBroadcastStatus.unsupported => (
          Icons.bluetooth_disabled,
          scheme.error,
          'Bluetooth Not Supported',
          'This device doesn\'t support BLE peripheral mode.',
        ),
      BleBroadcastStatus.poweredOff => (
          Icons.bluetooth_disabled,
          scheme.error,
          'Bluetooth Is Off',
          'Turn on Bluetooth to connect to the desktop.',
        ),
      BleBroadcastStatus.unauthorized => (
          Icons.bluetooth_disabled,
          scheme.error,
          'Bluetooth Permission Needed',
          'Grant Bluetooth permission to connect to the desktop.',
        ),
      BleBroadcastStatus.idle => (
          Icons.bluetooth,
          scheme.onSurface.withValues(alpha: 0.5),
          'Not Broadcasting',
          'Tap Start to make this device visible to the desktop.',
        ),
      BleBroadcastStatus.advertising => (
          Icons.bluetooth_searching,
          scheme.primary,
          'Waiting for Desktop…',
          'Broadcasting — open the desktop app and connect.',
        ),
      BleBroadcastStatus.connected => (
          Icons.bluetooth_connected,
          successColor,
          'Connected to Desktop',
          'Ready to send barcodes.',
        ),
    };

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(AppSpacing.md),
                  decoration: BoxDecoration(color: color.withValues(alpha: 0.1), shape: BoxShape.circle),
                  child: Icon(icon, color: color, size: 28),
                ),
                AppSpacing.gapLg,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title, style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600)),
                      if (subtitle.isNotEmpty) ...[
                        AppSpacing.gapXs,
                        Text(subtitle, style: textTheme.bodySmall),
                      ],
                    ],
                  ),
                ),
              ],
            ),
            if (state.errorMessage.isNotEmpty) ...[
              AppSpacing.gapMd,
              Container(
                padding: const EdgeInsets.all(AppSpacing.md),
                decoration: BoxDecoration(
                  color: scheme.error.withValues(alpha: 0.08),
                  borderRadius: AppRadius.brMd,
                ),
                child: Text(
                  state.errorMessage,
                  style: textTheme.bodySmall?.copyWith(color: scheme.error),
                ),
              ),
            ],
            AppSpacing.gapLg,
            if (state.status == BleBroadcastStatus.unauthorized ||
                state.status == BleBroadcastStatus.poweredOff) ...[
              OutlinedButton.icon(
                onPressed: () => ref.read(bleBroadcastControllerProvider.notifier).openSettings(),
                icon: const Icon(Icons.settings_outlined),
                label: const Text('Open Bluetooth Settings'),
              ),
            ] else if (state.isAdvertising) ...[
              OutlinedButton.icon(
                onPressed: onStop,
                icon: const Icon(Icons.stop_circle_outlined),
                label: const Text('Stop Broadcasting'),
              ),
            ] else ...[
              PrimaryButton(
                label: 'Start Broadcasting',
                icon: Icons.bluetooth,
                onPressed: state.status == BleBroadcastStatus.idle ? onStart : null,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
