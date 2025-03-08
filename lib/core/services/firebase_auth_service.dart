import 'package:ecommerce/core/errors/exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService {
  Future<User> createUserWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw customException(message: 'The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        throw customException(
            message: 'The account already exists for that email.');
      } else {
        throw customException(
            message: 'An error occurred , Please try again later');
      }
    } catch (e) {
      throw customException(
          message: 'An error occurred , Please try again later');
    }
  }
}
