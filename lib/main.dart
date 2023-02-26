import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:medical/pages/onboard_all.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const Onboard_all(),
    },
  ));
}