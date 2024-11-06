import 'package:dartz/dartz.dart';
import 'package:ecommerce/data/category/models/category.dart';
import 'package:ecommerce/data/category/source/category_firebase_service.dart';

import '../../../domain/category/repositary/category.dart';
import '../../../service_locator.dart';

class CategoryRepositaryImpl extends CategoryRepositary {
  @override
  Future<Either> getCategories() async {
    var categories = await sl<CategoryFirebaseService>().getCategories();
    return categories.fold((error) {
      return Left(error);
    }, (data) {
      return Right(List.from(data)
          .map((e) => CategoryModel.fromMap(e).toEntity())
          .toList());
    });
  }
}
