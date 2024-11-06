import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/usecase/usecase.dart';
import 'package:ecommerce/data/auth/models/user_signin_req.dart';
import 'package:ecommerce/service_locator.dart';

import '../repositary/auth.dart';

class SigninUseCase implements Usecase<Either, UserSigninReq> {
  @override
  Future<Either> call({UserSigninReq? params}) {
    return sl<AuthRepositary>().signin(params!);
  }
}
