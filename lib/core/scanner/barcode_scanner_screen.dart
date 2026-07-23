import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_datawedge/flutter_datawedge.dart';
import 'package:flutter_datawedge/models/scan_result.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import '../theme/app_colors.dart';
import '../theme/app_radius.dart';
import '../theme/app_spacing.dart';

/// Pushes [BarcodeScannerScreen] and returns the scanned value, or `null` if
/// the user backs out without scanning.
Future<String?> showBarcodeScanner(BuildContext context, {String? title}) {
  return Navigator.of(context).push<String>(
    MaterialPageRoute(builder: (context) => BarcodeScannerScreen(title: title)),
  );
}

/// Hybrid barcode scanner: uses the phone camera on regular devices, and
/// Zebra DataWedge hardware scanning (physical trigger button) when running
/// on a Zebra device with DataWedge installed. Falls back to the camera if
/// DataWedge isn't available.
class BarcodeScannerScreen extends StatefulWidget {
  const BarcodeScannerScreen({super.key, this.title});

  final String? title;

  @override
  State<BarcodeScannerScreen> createState() => _BarcodeScannerScreenState();
}

class _BarcodeScannerScreenState extends State<BarcodeScannerScreen> {
  MobileScannerController? _cameraController;
  FlutterDataWedge? _dataWedge;
  StreamSubscription<ScanResult>? _scanSubscription;

  bool _isZebraDevice = false;
  bool _isInitializing = true;
  String _statusMessage = 'Initializing scanner...';

  @override
  void initState() {
    super.initState();
    _initializeScanner();
  }

  Future<void> _initializeScanner() async {
    if (!Platform.isAndroid) {
      _initializeCameraScanner();
      return;
    }

    try {
      _dataWedge = FlutterDataWedge(profileName: 'ABGScannerProfile');
      await _dataWedge!.initialize();
      _isZebraDevice = true;
      await _setupDataWedge();
    } catch (_) {
      // DataWedge not available on this device — fall back to camera.
      _initializeCameraScanner();
    }
  }

  Future<void> _setupDataWedge() async {
    try {
      _scanSubscription = _dataWedge!.onScanResult.listen(
        (ScanResult result) {
          if (result.data.isNotEmpty && mounted) {
            Navigator.of(context).pop(result.data);
          }
        },
        onError: (Object error) {
          if (mounted) setState(() => _statusMessage = 'Scanner error: $error');
        },
      );

      if (mounted) {
        setState(() {
          _isInitializing = false;
          _statusMessage = 'Press trigger to scan';
        });
      }
    } catch (_) {
      _initializeCameraScanner();
    }
  }

  void _initializeCameraScanner() {
    _cameraController = MobileScannerController();
    if (mounted) {
      setState(() {
        _isZebraDevice = false;
        _isInitializing = false;
        _statusMessage = 'Point camera at barcode';
      });
    }
  }

  void _onCameraDetect(BarcodeCapture capture) {
    for (final barcode in capture.barcodes) {
      final value = barcode.rawValue;
      if (value != null && value.isNotEmpty) {
        _cameraController?.stop();
        Navigator.of(context).pop(value);
        break;
      }
    }
  }

  @override
  void dispose() {
    _scanSubscription?.cancel();
    _cameraController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title ?? 'Scan Barcode'),
        actions: [
          if (_isZebraDevice)
            Padding(
              padding: const EdgeInsets.only(right: AppSpacing.lg),
              child: Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md, vertical: AppSpacing.xs),
                  decoration: BoxDecoration(
                    color: isDark ? AppColors.successDark : AppColors.success,
                    borderRadius: AppRadius.brFull,
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.check_circle, size: 16, color: AppColors.white),
                      SizedBox(width: AppSpacing.xs),
                      Text(
                        'Zebra',
                        style: TextStyle(color: AppColors.white, fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
      body: _buildBody(scheme),
    );
  }

  Widget _buildBody(ColorScheme scheme) {
    if (_isInitializing) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircularProgressIndicator(),
            AppSpacing.gapLg,
            Text(_statusMessage, style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),
      );
    }

    return _isZebraDevice ? _buildZebraScannerUi(scheme) : _buildCameraScannerUi();
  }

  Widget _buildZebraScannerUi(ColorScheme scheme) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [scheme.primary.withValues(alpha: 0.1), scheme.surface],
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.xxl),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(AppSpacing.xxl),
                decoration: BoxDecoration(
                  color: scheme.surface,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: scheme.primary.withValues(alpha: 0.2),
                      blurRadius: 20,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: Icon(Icons.qr_code_scanner, size: 80, color: scheme.primary),
              ),
              AppSpacing.gapXxl,
              Text(
                'Zebra Scanner Ready',
                style: textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold, color: scheme.primary),
                textAlign: TextAlign.center,
              ),
              AppSpacing.gapLg,
              Container(
                padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl, vertical: AppSpacing.md),
                decoration: BoxDecoration(
                  color: scheme.primary.withValues(alpha: 0.1),
                  borderRadius: AppRadius.brMd,
                  border: Border.all(color: scheme.primary.withValues(alpha: 0.3)),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.touch_app, color: scheme.primary, size: 20),
                    AppSpacing.gapSm,
                    Flexible(
                      child: Text(
                        _statusMessage,
                        style: textTheme.bodyLarge?.copyWith(color: scheme.primary, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              AppSpacing.gapXl,
              Text(
                'Use the physical trigger button on your Zebra device to scan',
                style: textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCameraScannerUi() {
    final controller = _cameraController;
    if (controller == null) {
      return const Center(child: Text('Camera not available'));
    }

    return Stack(
      children: [
        MobileScanner(controller: controller, onDetect: _onCameraDetect),
        Positioned(
          bottom: AppSpacing.xxl,
          left: 0,
          right: 0,
          child: Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl, vertical: AppSpacing.md),
              decoration: BoxDecoration(
                color: AppColors.black.withValues(alpha: 0.6),
                borderRadius: AppRadius.brMd,
              ),
              child: Text(
                _statusMessage,
                style: const TextStyle(color: AppColors.white, fontSize: 14),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
