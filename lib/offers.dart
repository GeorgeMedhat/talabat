import 'package:flutter/cupertino.dart';

class offer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      width: MediaQuery.of(context).size.width-MediaQuery.of(context).size.width/10,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),

        ),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(image: AssetImage('assets/images/food.jpeg'),fit: BoxFit.fill,)),

      ),
    );
  }

}