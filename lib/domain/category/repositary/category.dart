import 'package:dartz/dartz.dart';

abstract class CategoryRepositary {
  Future<Either> getCategories();
}
