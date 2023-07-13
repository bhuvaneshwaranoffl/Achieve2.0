import 'package:firebase_auth/firebase_auth.dart';

import '../HelperFunction/HelperFunction.dart';
import 'DatabaseService.dart';


class AuthService{
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  //login
  Future loginWithUserNameandPassword(String email, String password) async {
    try {
      User user = (await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password))
          .user!;

      if (user != null) {
        return true;
      }
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }



// register
  Future registerUserWithEmailandPassword(
      String fullName,String registerNum,String college, String email, String password) async {
    try {
      User user = (await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password))
          .user!;

      if (user != null) {
        // call our database service to update the user data.
        await DatabaseService(uid: user.uid).updateUserData(fullName, email, college, registerNum);
        return true;
      }
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

//signOut

  Future signOut() async {
    try {
      await HelperFunction.saveUserLoggedInStatus(false);
      await HelperFunction.saveUserEmailSF("");
      await HelperFunction.saveUserRegisterNumSF("");
      await HelperFunction.saveUserCollegeSF("");
      await HelperFunction.saveUserNameSF("");
      await firebaseAuth.signOut();
    } catch (e) {
      return null;
    }
  }



}