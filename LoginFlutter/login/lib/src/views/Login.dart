import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login/src/provider/google_sign_in.dart';
import 'package:login/src/views/PantallaPrincipal.dart';
import 'package:login/src/widgets/Button_login.dart';
import 'package:login/src/widgets/Stack_Back_Login.dart';
import 'package:provider/provider.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            final provider = Provider.of<GoogleSignInProvider>(context);
            if (provider.isSigningIn) {
              return buildLoading();
            } else if (snapshot.hasData) {
              return PantallaPrincipal();
            } else {
              return PageView(
                scrollDirection: Axis.vertical,
                children: [StackBackLogin(), ButtonLogin()],
              );
            }
          }),
    );
  }

  Widget buildLoading() => Stack(
        fit: StackFit.expand,
        children: [
          Center(child: CircularProgressIndicator()),
        ],
      );
}
