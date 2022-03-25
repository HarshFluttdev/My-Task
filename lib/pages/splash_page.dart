import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_task/pages/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 8),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const Login())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/images/homepage/calender.gif'),
          const SizedBox(height: 26),
          Image.asset('assets/images/homepage/My-Task.png'),
          const SizedBox(height: 6),
          const Text(
            "Let's Management Better",
            style: TextStyle(fontSize: 30, color: Color(0xff52295D)),
          ),
          const SizedBox(height: 30),
          Image.asset(
            'assets/images/homepage/Calender-22.gif',
            height: 85,
            width: 85,
          ),
        ],
      ),
    );
  }
}
