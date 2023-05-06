import 'package:firebase_auth/firebase_auth.dart';
import 'package:hot_brew/models/user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create user obj based on firebase user

  UserCred _userFromFirebaseUser(User? user) {
    return UserCred(uid: user!.uid);
  }

  Stream<UserCred> get user {
    return _auth.authStateChanges().map(_userFromFirebaseUser);
  }

  //sign in anom
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User user = result.user!;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //sign in with email passwrd

  //register with email passwrd

  //sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}




















// import 'package:firebase_auth/firebase_auth.dart';

// class AuthService {
//   final FirebaseAuth _auth = FirebaseAuth.instance;

//   Future signInAnon() async {
//     try {
//       UserCredential result = await _auth.signInAnonymously();
//       User user = result.user!;
//       return user;
//     } catch (e) {
//       print(e.toString());
//       return null;
//     }
//   }
// }
