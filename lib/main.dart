import 'package:flutter/material.dart';
import 'package:mvp_all/pages/forgotPass.dart';
import 'package:mvp_all/pages/homePage.dart';
import 'package:mvp_all/pages/inicioSesion.dart';
import 'package:mvp_all/pages/login.dart';
import 'package:mvp_all/pages/progressView.dart';
import 'package:mvp_all/pages/register.dart';
import 'package:mvp_all/splash/splas_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: SplasView(),
      // home: progressView(),
      initialRoute: 'principal',

      routes: {
        'principal': (BuildContext context) => const SplasView(),
        'circulo': (BuildContext context) => progressView(),
        'login': (BuildContext context) => const login(),
        'ForgotPassword': (BuildContext context) => const ForgotPassword(),
        'Register': (BuildContext context) => Register(),
        'InicioSesion': (BuildContext context) => const InicioSesion(),
        'Home': (BuildContext context) => const MainHome(),
      },
    );
  }
}
