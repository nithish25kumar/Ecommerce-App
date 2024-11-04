import 'package:ecommerce/core/usecase/usecase.dart';
import 'package:ecommerce/domain/repositary/auth.dart';
import 'package:ecommerce/service_locator.dart';

class IsLoggedInUseCase implements Usecase<bool, dynamic> {
  @override
  Future<bool> call({params}) async {
    return await sl<AuthRepositary>().isLoggedIn();
  }
}
