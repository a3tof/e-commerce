import 'package:ecommerce/core/services/firebase_auth_service.dart';
import 'package:ecommerce/featuers/auth/data/domain/repos/auth_repo.dart';
import 'package:ecommerce/featuers/auth/data/repos/auth_repo_implemetation.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetit() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  getIt.registerSingleton<AuthRepo>(AuthRepoImplemetation(
    firebaseAuthService: getIt<FirebaseAuthService>(),
  ));
}
