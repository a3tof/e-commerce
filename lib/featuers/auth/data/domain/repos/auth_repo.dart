import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/errors/failures.dart';
import 'package:ecommerce/featuers/auth/data/domain/entites/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String name);
}
