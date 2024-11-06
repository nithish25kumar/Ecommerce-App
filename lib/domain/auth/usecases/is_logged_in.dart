import 'package:ecommerce/core/usecase/usecase.dart';
import 'package:ecommerce/service_locator.dart';

import '../repositary/auth.dart';

class IsLoggedInUseCase implements Usecase<bool, dynamic> {
  @override
  Future<bool> call({params}) async {
    return await sl<AuthRepositary>().isLoggedIn();
  }
}
