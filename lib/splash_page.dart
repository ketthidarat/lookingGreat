import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'bar.dart';
import 'home.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        seconds: 1,
        navigateAfterSeconds: BarNavy(),
        title: Text(
          'Looking Great',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0 ,
            color: Colors.pink[300] ,fontStyle:FontStyle.italic),
        ),
        image: Image.asset('asset/images/tik1.png'),
        backgroundColor: Colors.pink[100],
        styleTextUnderTheLoader: TextStyle(color: Colors.deepPurple),
        photoSize: 150.0,
        loaderColor: Colors.pink[100]
        );
  }
}