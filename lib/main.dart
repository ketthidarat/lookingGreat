import 'package:flutter/material.dart';
import 'home.dart';
import 'splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Looking Great',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        backgroundColor: Colors.purple[50],
      ),
      home: SplashPage());
  }
}
