import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:medical/pages/analiz_main.dart';
import 'package:medical/pages/code_in_email.dart';
import 'package:medical/pages/create_card.dart';
import 'package:medical/pages/create_password.dart';
import 'package:medical/pages/onboard_all.dart';
import 'package:medical/pages/signup.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const Onboard_all(),
      '/signup': (context) => const SignUp(),
      '/codeinemail': (context) => const CodeInEmail(),
      '/createpassword': (context) => const CreatePassword(),
      '/createcard': (context) => CreateCard(),
      '/analizmain': (context) => const AnalizMain(),
    },
  ));
}