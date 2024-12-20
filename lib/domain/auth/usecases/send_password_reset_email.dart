import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/usecase/usecase.dart';
import 'package:ecommerce/service_locator.dart';

import '../repositary/auth.dart';

class SendPasswordResetEmailUseCase implements Usecase<Either, String> {
  @override
  Future<Either> call({String? params}) {
    return sl<AuthRepositary>().sendPasswordResetEmail(params!);
  }
}
