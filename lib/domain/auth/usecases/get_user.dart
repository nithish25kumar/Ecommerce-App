import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/usecase/usecase.dart';
import 'package:ecommerce/service_locator.dart';

import '../repositary/auth.dart';

class GetUserUseCase implements Usecase<Either, dynamic> {
  @override
  Future<Either> call({dynamic params}) async {
    return await sl<AuthRepositary>().getUser();
  }
}
