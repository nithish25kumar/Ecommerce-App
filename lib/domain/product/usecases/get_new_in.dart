import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/usecase/usecase.dart';
import 'package:ecommerce/domain/product/repositary/product.dart';
import 'package:ecommerce/service_locator.dart';

class GetNewInUseCase implements Usecase<Either, dynamic> {
  @override
  Future<Either> call({dynamic params}) async {
    return await sl<ProductRepositary>().getNewIn();
  }
}
