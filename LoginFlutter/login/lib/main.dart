import 'package:flutter/material.dart';
import 'package:login/src/provider/email_sign_in.dart';
import 'package:login/src/provider/google_sign_in.dart';
import 'package:login/src/views/Login.dart';

import 'package:firebase_core/firebase_core.dart';

import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MultiProvider(providers: [
        ChangeNotifierProvider(create: (context) => GoogleSignInProvider()),
        ChangeNotifierProvider(create: (context) => EmailSignInProvider()),
      ], child: MaterialApp(home: Login()));
}
