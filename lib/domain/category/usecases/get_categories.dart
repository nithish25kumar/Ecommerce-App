import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/usecase/usecase.dart';
import 'package:ecommerce/domain/category/repositary/category.dart';
import 'package:ecommerce/service_locator.dart';

class GetCategoriesUseCase implements Usecase<Either, dynamic> {
  @override
  Future<Either> call({dynamic params}) async {
    return await sl<CategoryRepositary>().getCategories();
  }
}
