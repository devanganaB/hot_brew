import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hot_brew/models/user.dart';
import 'package:hot_brew/screens/authenticate/authenticate.dart';
import 'package:hot_brew/screens/home/home.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserCred?>(context);
    print(user);

    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }

  //   // return Home();
  //   return Authenticate();
  // }
}
