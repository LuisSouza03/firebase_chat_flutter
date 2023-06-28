import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_chat_flutter/commom/entities/user.dart';
import 'package:firebase_chat_flutter/commom/pages/sign_in/state.dart';
import 'package:firebase_chat_flutter/commom/store/user.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

GoogleSignIn _googleSignIn = GoogleSignIn(scopes: <String>['openid']);

class SignInController extends GetxController {
  final state = SignInState();
  SignInController();

  final db = FirebaseFirestore.instance;

  Future<void> handleSignIn() async {
    try {
      var user = await _googleSignIn.signIn();
      if (user != null) {
        String displayName = user.displayName ?? user.email;
        String email = user.email;
        String id = user.id;
        String photoUrl = user.photoUrl ?? '';

        UserLoginResponseEntity userProfile = UserLoginResponseEntity();

        userProfile.email = email;
        userProfile.displayName = displayName;
        userProfile.photoUrl = photoUrl;
        userProfile.accessToken = id;

        UserStore.to.saveProfile(userProfile);
      }
    } catch (e) {}
  }
}
