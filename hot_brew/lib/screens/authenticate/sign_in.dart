import 'package:flutter/material.dart';
import 'package:hot_brew/services/auth.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    // var colors = Colors;
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
          backgroundColor: Colors.brown[600],
          elevation: 0.0,
          title: const Text('Sign in to Hot Brew')),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        child: ElevatedButton(
          child: Text('Sign in'),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.brown[700]),
          ),
          onPressed: () async {
            dynamic result = await _auth.signInAnon();

            if (result == null) {
              print('Sign in Failed');
            } else {
              print('Succesfully Signed in');
              print(result.uid);
            }
          },
        ),
      ),
    );
  }
}



// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:hot_brew/services/auth.dart';

// class SignIn extends StatefulWidget {
//   const SignIn({super.key});

//   @override
//   State<SignIn> createState() => _SignInState();
// }

// class _SignInState extends State<SignIn> {
//   final AuthService _auth = AuthService();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.brown[100],
//       appBar: AppBar(
//         backgroundColor: Colors.brown[400],
//         elevation: 0.0,
//         title: Text('sign in to Hot Crew'),
//       ),
//       body: Container(
//         padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
//         child: ElevatedButton(
//           child: Text('sign in now'),
//           style: ButtonStyle(
//             backgroundColor:
//                 MaterialStateProperty.all(Color.fromARGB(159, 138, 71, 7)),
//           ),
//           onPressed: () async {
//             dynamic result = await _auth.signInAnom();
//             if (result == null) {
//               print('signin failed');
//             } else {
//               print('signed in');
//               print(result);
//             }
//           },
//         ),
//       ),
//     );
//   }
// }
