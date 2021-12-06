import 'package:flutter/material.dart';

import 'package:login/src/provider/google_sign_in.dart';
import 'package:login/src/views/auth_page.dart';

import 'package:provider/provider.dart';

class ButtonLogin extends StatefulWidget {
  ButtonLogin({Key? key}) : super(key: key);

  @override
  _ButtonLoginState createState() => _ButtonLoginState();
}

class _ButtonLoginState extends State<ButtonLogin> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(color: Color(0xff30BAD6)),
        ),
        ButtonGoogle(context),
        ButtonEmail(context),
      ],
    );
  }

  Widget ButtonGoogle(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: TextButton(
        onPressed: () {
          final provider =
              Provider.of<GoogleSignInProvider>(context, listen: false);
          provider.login();
        },
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            "Login with Google",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        style: TextButton.styleFrom(
            backgroundColor: Color(0xff0098FA), shape: StadiumBorder()),
      ),
    );
  }

  Widget ButtonEmail(BuildContext context) {
    return Container(
      alignment: Alignment(0.0, 0.2),
      child: TextButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => AuthPage()));
        },
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            "Login with Email",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        style: TextButton.styleFrom(
            backgroundColor: Color(0xff0098FA), shape: StadiumBorder()),
      ),
    );
  }
}
