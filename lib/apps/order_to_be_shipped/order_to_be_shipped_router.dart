import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/jde_auth/jde_session_controller.dart';
import '../../core/jde_auth/jde_session_state.dart';
import 'features/auth/presentation/ui/login_screen.dart';
import 'features/order_to_be_shipped/presentation/ui/order_to_be_shipped_screen.dart';
import 'order_to_be_shipped_routes.dart';

/// Auth gating lives in [redirect], driven by [JdeSessionController] — same
/// pattern as the Location Availability Inquiry app's router. Each app
/// flavor gets its own [JdeSessionController]/[JdeSessionStorage] instance
/// via [appFlavorProvider], so this app's session is fully independent.
final orderToBeShippedRouterProvider = Provider<GoRouter>((ref) {
  final refresh = ValueNotifier<JdeAuthStatus>(JdeAuthStatus.unknown);
  ref.onDispose(refresh.dispose);
  ref.listen(
    jdeSessionControllerProvider.select((s) => s.status),
    (_, next) => refresh.value = next,
    fireImmediately: true,
  );

  return GoRouter(
    initialLocation: OrderToBeShippedRoute.loginPath,
    refreshListenable: refresh,
    redirect: (context, state) {
      final status = ref.read(jdeSessionControllerProvider).status;
      if (status == JdeAuthStatus.unknown) return null;

      final loggingIn = state.matchedLocation == OrderToBeShippedRoute.loginPath;
      if (status == JdeAuthStatus.unauthenticated) {
        return loggingIn ? null : OrderToBeShippedRoute.loginPath;
      }
      return loggingIn ? OrderToBeShippedRoute.homePath : null;
    },
    routes: [
      GoRoute(
        path: OrderToBeShippedRoute.loginPath,
        name: OrderToBeShippedRoute.login,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: OrderToBeShippedRoute.homePath,
        name: OrderToBeShippedRoute.home,
        builder: (context, state) => const OrderToBeShippedScreen(),
      ),
    ],
  );
});
