import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:talabat/talabat_logo.dart';
void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget{


  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: LogoPage(),
    );
  }


}