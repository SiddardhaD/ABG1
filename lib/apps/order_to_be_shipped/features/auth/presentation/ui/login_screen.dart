import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../core/base/base_consumer_state.dart';
import '../../../../../../core/common/widgets/app_text_field.dart';
import '../../../../../../core/common/widgets/exit_confirmation.dart';
import '../../../../../../core/common/widgets/primary_button.dart';
import '../../../../../../core/jde_auth/jde_session_controller.dart';
import '../../../../../../core/theme/app_spacing.dart';

/// Login for the Order to be Shipped app — authenticates against the real
/// JDE `jde-login` orchestrator call. Nothing pops back to this screen once
/// signed in — only Logout returns here (see [JdeSessionController.logout]).
/// Session storage is namespaced per app flavor, so this session is fully
/// separate from every other app.
class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends BaseConsumerState<LoginScreen> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordFocusNode = FocusNode();
  bool _obscurePassword = true;

  @override
  void initState() {
    super.initState();
    // Login is a centered form with nothing to gain from extra width; lock
    // it to portrait. Restored on dispose so the post-login screen (which
    // supports landscape) can rotate freely.
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations(DeviceOrientation.values);
    _usernameController.dispose();
    _passwordController.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    FocusScope.of(context).unfocus();
    await ref.read(jdeSessionControllerProvider.notifier).login(
          username: _usernameController.text.trim(),
          password: _passwordController.text,
        );
    // On success, the router's redirect (driven by JdeSessionController)
    // takes over navigation automatically.
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final state = ref.watch(jdeSessionControllerProvider);
    final canSubmit =
        _usernameController.text.trim().isNotEmpty && _passwordController.text.isNotEmpty;

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop) confirmExitApp(context);
      },
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: AppSpacing.pagePadding,
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 420),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Center(
                      child: Container(
                        padding: const EdgeInsets.all(AppSpacing.xl),
                        decoration: BoxDecoration(
                          color: scheme.primary.withValues(alpha: 0.1),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.local_shipping_outlined, size: 48, color: scheme.primary),
                      ),
                    ),
                    AppSpacing.gapXl,
                    Text(
                      'Order to be Shipped',
                      style: textTheme.displayLarge,
                      textAlign: TextAlign.center,
                    ),
                    AppSpacing.gapSm,
                    Text(
                      'Sign in with your JDE credentials',
                      style: textTheme.bodyMedium,
                      textAlign: TextAlign.center,
                    ),
                    AppSpacing.gapXxl,
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(AppSpacing.lg),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            AppTextField(
                              label: 'Username',
                              hint: 'Enter your username',
                              controller: _usernameController,
                              textInputAction: TextInputAction.next,
                              onChanged: (_) => setState(() {}),
                              onFieldSubmitted: (_) => _passwordFocusNode.requestFocus(),
                            ),
                            AppSpacing.gapLg,
                            AppTextField(
                              label: 'Password',
                              hint: '••••••',
                              controller: _passwordController,
                              focusNode: _passwordFocusNode,
                              obscureText: _obscurePassword,
                              textInputAction: TextInputAction.done,
                              onChanged: (_) => setState(() {}),
                              onFieldSubmitted: (_) => canSubmit ? _submit() : null,
                              suffix: IconButton(
                                icon: Icon(
                                  _obscurePassword
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                ),
                                onPressed: () => setState(() => _obscurePassword = !_obscurePassword),
                              ),
                            ),
                            if (state.errorMessage.isNotEmpty) ...[
                              AppSpacing.gapMd,
                              Text(
                                state.errorMessage,
                                style: textTheme.bodySmall?.copyWith(color: scheme.error),
                              ),
                            ],
                            AppSpacing.gapXl,
                            PrimaryButton(
                              label: 'Sign In',
                              icon: Icons.login,
                              isLoading: state.isLoading,
                              onPressed: canSubmit ? _submit : null,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
