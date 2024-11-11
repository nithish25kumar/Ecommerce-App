import 'package:dartz/dartz.dart';

abstract class ProductRepositary {
  Future<Either> getTopSelling();
  Future<Either> getNewIn();
}
