//Firebase Functions
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  // Sign  Up Function
  Future signUpDemo(String email, String password) async{
    //create user 
    User? user = (await firebaseAuth.createUserWithEmailAndPassword(
      email: email, password: password)).user;
      return user!.uid;

  }
  //sign Out function
  Future signOut() async{
    return await firebaseAuth.signOut();
  }
}