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
        throw customException(message: 'كلمة المرور ضعيفة جداً');
      } else if (e.code == 'email-already-in-use') {
        throw customException(
            message: 'لقد تم استخدام هذا البريد الإلكتروني من قبل');
      } else {
        throw customException(
            message: 'لقد حدث خطأ ما , الرجاء المحاولة مرة أخرى لاحقاً');
      }
    } catch (e) {
      throw customException(
          message: 'لقد حدث خطأ ما , الرجاء المحاولة مرة أخرى لاحقاً');
    }
  }
}
