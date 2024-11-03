import 'package:dartz/dartz.dart';
import 'package:ecommerce/data/auth/models/user_creation_req.dart';

abstract class AuthRepositary {
  Future<Either> signup(UserCreationReq user);
  Future<Either> getAges();
}
