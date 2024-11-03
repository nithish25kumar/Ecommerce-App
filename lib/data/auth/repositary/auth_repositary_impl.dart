import 'package:dartz/dartz.dart';
import 'package:ecommerce/data/auth/models/user_creation_req.dart';
import 'package:ecommerce/data/auth/source/auth_firebase_service.dart';
import 'package:ecommerce/domain/repositary/auth.dart';
import 'package:ecommerce/service_locator.dart';

class AuthRepositaryImpl extends AuthRepositary {
  @override
  Future<Either> signup(UserCreationReq user) {
    return sl<AuthFirebaseService>().signup(user);
  }

  @override
  Future<Either> getAges() async {
    return await sl<AuthFirebaseService>().getAges();
  }
}