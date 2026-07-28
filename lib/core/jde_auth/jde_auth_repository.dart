import 'package:multiple_result/multiple_result.dart';

import '../exception/failure.dart';
import 'dto/jde_login_response.dart';

abstract class JdeAuthRepository {
  Future<Result<JdeLoginResponse, Failure>> login({
    required String username,
    required String password,
  });

  /// Succeeds only when the logout call returns HTTP 200, per spec — the
  /// caller should not clear the local session or navigate to login on
  /// anything else.
  Future<Result<void, Failure>> logout();
}
