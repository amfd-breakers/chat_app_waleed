import 'dart:developer';

import 'package:chat_app_waleed/models/my_user.dart';
import 'package:chat_app_waleed/models/response/signup_response.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  Future<SignupResponse> signUpWithEmail({
    required String username,
    required String email,
    required String password,
  }) async {
    SignupResponse unknownError =
        SignupResponse(error: 'Something went wrong. Please try again.');
    try {
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (userCredential.user != null) {
        User user = userCredential.user!;
        await firebaseFirestore.collection('users').doc(user.uid).set({
          'username': username,
        });

        return SignupResponse(user: MyUser(user: user, username: username));
      } else {
        return unknownError;
      }
    } on FirebaseAuthException catch (e) {
      log('AuthService.signUpWithEmail: error ${e.code}');
      if (e.code == 'email-already-in-use') {
        return SignupResponse(error: 'Email is already in use.');
      } else {
        return unknownError;
      }
    }
  }
}
