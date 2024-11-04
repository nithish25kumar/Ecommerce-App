import 'package:dartz/dartz.dart';
import 'package:ecommerce/data/auth/models/user_creation_req.dart';
import 'package:ecommerce/data/auth/models/user_signin_req.dart';

abstract class AuthRepositary {
  Future<Either> signup(UserCreationReq user);
  Future<Either> signin(UserSigninReq user);

  Future<Either> getAges();
  Future<Either> sendPasswordResetEmail(String email);
  Future<bool> isLoggedIn();
}
