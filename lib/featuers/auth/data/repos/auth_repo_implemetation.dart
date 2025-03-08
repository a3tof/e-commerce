import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/errors/failures.dart';
import 'package:ecommerce/core/services/firebase_auth_service.dart';
import 'package:ecommerce/featuers/auth/data/domain/entites/user_entity.dart';
import 'package:ecommerce/featuers/auth/data/domain/repos/auth_repo.dart';

class AuthRepoImplemetation extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;

  AuthRepoImplemetation({required this.firebaseAuthService});
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String email, String password) {
    // TODO: implement createUserWithEmailAndPassword
    throw UnimplementedError();
  }
}
