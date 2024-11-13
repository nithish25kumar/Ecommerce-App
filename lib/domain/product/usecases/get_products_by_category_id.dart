import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/usecase/usecase.dart';
import 'package:ecommerce/domain/product/repositary/product.dart';
import 'package:ecommerce/service_locator.dart';

class GetProductsByCategoryIdUseCase implements Usecase<Either, String> {
  @override
  Future<Either> call({dynamic params}) async {
    return await sl<ProductRepositary>().getProductsByCategoryId(params!);
  }
}
