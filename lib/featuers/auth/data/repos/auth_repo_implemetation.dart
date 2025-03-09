import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/errors/exceptions.dart';
import 'package:ecommerce/core/errors/failures.dart';
import 'package:ecommerce/core/services/firebase_auth_service.dart';
import 'package:ecommerce/featuers/auth/data/domain/entites/user_entity.dart';
import 'package:ecommerce/featuers/auth/data/domain/repos/auth_repo.dart';
import 'package:ecommerce/featuers/auth/data/models/user_model.dart';

class AuthRepoImplemetation extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;

  AuthRepoImplemetation({required this.firebaseAuthService});
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String name) async {
    try {
      var user = await firebaseAuthService.createUserWithEmailAndPassword(
          email: email, password: password);
      return right(
        UserModel.fromFirebaseUser(user),
      );
    } on customException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      return left(
        ServerFailure('لقد حدث خطأ ما , الرجاء المحاولة مرة أخرى لاحقاً'),
      );
    }
  }
}
