import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:talabat/SignUp.dart';

class LogoPage extends StatelessWidget{
  @override

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(245, 96, 7, 1),

        ),
        child: Center(
          child: AnimatedTextKit (
      animatedTexts: [
        TyperAnimatedText("talabat",textStyle: TextStyle(

            fontFamily: "talabat",
            fontSize: 80,
            color: Colors.white,

    ),speed: Duration(milliseconds: 100))
       ],
            totalRepeatCount: 1,
            onFinished: ()async{
        await Future.delayed(Duration(milliseconds:500 ));
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>ss()));
            },
    ),
      ),

    ));
  }
}

