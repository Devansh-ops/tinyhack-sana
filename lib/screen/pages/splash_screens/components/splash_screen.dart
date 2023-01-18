import 'package:flutter/material.dart';
import 'package:tiny_hack/screen/pages/splash_screens/components/body.dart';
import 'package:tiny_hack/size_config.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
//