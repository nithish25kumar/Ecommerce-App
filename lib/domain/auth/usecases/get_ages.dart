import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/usecase/usecase.dart';
import 'package:ecommerce/domain/repositary/auth.dart';
import 'package:ecommerce/service_locator.dart';

class GetAgesUseCase implements Usecase<Either, dynamic> {
  @override
  Future<Either> call({dynamic params}) async {
    return await sl<AuthRepositary>().getAges();
  }
}
