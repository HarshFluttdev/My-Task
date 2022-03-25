import 'package:flutter/material.dart';
import 'package:my_task/pages/splash_page.dart';
import 'package:my_task/pages/calender.dart';
import 'package:my_task/providers/all_providers.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => AllProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MY Task',
      home: SplashScreen(),
    );
  }
}
