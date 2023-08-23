import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class foodwidget extends StatelessWidget {
  var myimage ;
  var txt;
  foodwidget(this.myimage,this.txt);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height/15,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),

            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
                child: Image(image: myimage,fit: BoxFit.fill,)),

          ),
          Align(
            alignment: Alignment.bottomLeft,
            child:Text(" "+txt,style: TextStyle(
              color: Colors.white,
              fontSize: 25
            ),),
          )
        ],
      ),
    );
  }
}
