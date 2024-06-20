
import 'package:fithub/features/registration/data/service/new_password_service.dart';
import 'package:fithub/features/registration/domain/new_password_request.dart';
import 'package:fithub/features/registration/domain/new_password_response.dart';

class NewPasswordRepository {
  final NewPasswordService _newPasswordService;
  
  NewPasswordRepository(
    this._newPasswordService,
  );

  Future<NewPasswordResponse> resetPassword({
    required NewPasswordRequest request,
  }) async {
    try {
      final result = await _newPasswordService.resetPassword(
        request: request,
      );
      return result;
    } catch (e, s) {
      throw Error.throwWithStackTrace(e, s);
    }
  }
}
