import 'package:ecommerce/featuers/auth/data/domain/entites/user_entity.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserModel extends UserEntity {
  UserModel({required super.uId, required super.email, required super.name});

  factory UserModel.fromFirebaseUser(User user) {
    return UserModel(
        uId: user.uid, email: user.email ?? '', name: user.displayName ?? '');
  }
}
