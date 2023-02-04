import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ite5_2022/screens/admin/homea.dart';
import 'package:ite5_2022/screens/student/homes.dart';

import 'screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const LoginScreen(),
      routes: {
        '/': (context) => const LoginScreen(),
        '/home-admin': (context) => const HomeAdmin(),
        '/home': (context) => const HomeStudent(),
      },
    );
  }
}
