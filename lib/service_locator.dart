import 'package:ecommerce/data/auth/repositary/auth_repositary_impl.dart';
import 'package:ecommerce/data/auth/source/auth_firebase_service.dart';
import 'package:ecommerce/data/category/repositary/category.dart';
import 'package:ecommerce/data/category/source/category_firebase_service.dart';
import 'package:ecommerce/domain/auth/usecases/get_ages.dart';
import 'package:ecommerce/domain/auth/usecases/get_user.dart';
import 'package:ecommerce/domain/auth/usecases/is_logged_in.dart';
import 'package:ecommerce/domain/auth/usecases/send_password_reset_email.dart';
import 'package:ecommerce/domain/auth/usecases/siginup.dart';
import 'package:ecommerce/domain/auth/usecases/signin.dart';
import 'package:ecommerce/domain/category/repositary/category.dart';
import 'package:ecommerce/domain/category/usecases/get_categories.dart';
import 'package:get_it/get_it.dart';

import 'domain/auth/repositary/auth.dart';

final sl = GetIt.instance;
Future<void> initializeDependencies() async {
  //Services
  sl.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImpl());
  sl.registerSingleton<CategoryFirebaseService>(CategoryFirebaseServiceImpl());

  //repositaries
  sl.registerSingleton<AuthRepositary>(AuthRepositoryImpl());
  sl.registerSingleton<CategoryRepositary>(CategoryRepositaryImpl());

  //Usecase
  sl.registerSingleton<SignupUseCase>(SignupUseCase());
  sl.registerSingleton<GetAgesUseCase>(GetAgesUseCase());
  sl.registerSingleton<SigninUseCase>(SigninUseCase());
  sl.registerSingleton<SendPasswordResetEmailUseCase>(
      SendPasswordResetEmailUseCase());
  sl.registerSingleton<IsLoggedInUseCase>(IsLoggedInUseCase());
  sl.registerSingleton<GetUserUseCase>(GetUserUseCase());
  sl.registerSingleton<GetCategoriesUseCase>(GetCategoriesUseCase());
}
