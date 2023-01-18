import 'package:flutter/material.dart';
import 'package:tiny_hack/screen/pages/splash_screens/components/splash_screen.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sanaa',
      home: SplashScreen(),
    );
  }
}
