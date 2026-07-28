import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/jde_auth/jde_session_controller.dart';
import '../../core/jde_auth/jde_session_state.dart';
import 'features/auth/presentation/ui/login_screen.dart';
import 'features/item_availability/presentation/ui/item_availability_screen.dart';
import 'location_availability_inquiry_routes.dart';

/// Auth gating lives in [redirect], driven by [JdeSessionController]:
///  - while the session is restoring ([JdeAuthStatus.unknown]) → hold in
///    place (no route matches yet, so nothing renders twice),
///  - unauthenticated users are bounced to `/login`,
///  - authenticated users are kept out of `/login`.
///
/// A [ValueNotifier] bridges the riverpod state into GoRouter's
/// `refreshListenable` so redirects re-run whenever the session changes —
/// this is what sends the user to `/home` right after login, and back to
/// `/login` right after logout, with no manual navigation calls needed.
final locationAvailabilityInquiryRouterProvider = Provider<GoRouter>((ref) {
  final refresh = ValueNotifier<JdeAuthStatus>(JdeAuthStatus.unknown);
  ref.onDispose(refresh.dispose);
  ref.listen(
    jdeSessionControllerProvider.select((s) => s.status),
    (_, next) => refresh.value = next,
    fireImmediately: true,
  );

  return GoRouter(
    initialLocation: LocationAvailabilityInquiryRoute.loginPath,
    refreshListenable: refresh,
    redirect: (context, state) {
      final status = ref.read(jdeSessionControllerProvider).status;
      if (status == JdeAuthStatus.unknown) return null;

      final loggingIn = state.matchedLocation == LocationAvailabilityInquiryRoute.loginPath;
      if (status == JdeAuthStatus.unauthenticated) {
        return loggingIn ? null : LocationAvailabilityInquiryRoute.loginPath;
      }
      // Authenticated: keep away from login.
      return loggingIn ? LocationAvailabilityInquiryRoute.homePath : null;
    },
    routes: [
      GoRoute(
        path: LocationAvailabilityInquiryRoute.loginPath,
        name: LocationAvailabilityInquiryRoute.login,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: LocationAvailabilityInquiryRoute.homePath,
        name: LocationAvailabilityInquiryRoute.home,
        builder: (context, state) => const ItemAvailabilityScreen(),
      ),
    ],
  );
});
