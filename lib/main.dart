import 'package:flutter/material.dart';
import 'package:visionare/CrudBarang.dart';
import 'package:visionare/Favorite.dart';
import 'package:visionare/detail.dart';
import 'package:visionare/SplashScreen.dart';
import 'package:visionare/LogIn.dart';
import 'package:visionare/SignUp.dart';
import 'package:visionare/DashBoard.dart';
import 'package:visionare/EditProfile.dart';
import 'package:visionare/Transaksi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Visionare',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/LogIn': (context) => const LogIn(),
        '/SignUp': (context) => const SignUp(),
        '/DashBoard': (context) => const DashBoard(),
        '/detail': (context) => const Detail(),
        '/Favorite': (context) => const Favorite(),
        '/CrudBarang': (context) => const CrudBarang(),
        '/EditProfile': (context) => const EditProfile(),
        '/Transaksi': (context) => const Transaksi(),
      },
    );
  }
}
