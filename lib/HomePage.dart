import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:talabat/databox.dart';
import 'package:talabat/offerspage.dart';
import 'package:talabat/profile.dart';
import 'package:talabat/vouchers.dart';

import 'orderfood.dart';
import 'orders.dart';

class lol extends StatefulWidget {
  //lol(Key?key) :super(key: key);

  @override
  State<lol> createState() => Homepage();
}
class Homepage extends State<lol>{
  List<Widget>pages =  [
    OrderFood(),
    Orders(),
    Vouchers(),
    Offerspage(),
    Profile()

  ];

  int indexValue=0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     bottomNavigationBar: BottomNavigationBar(
       backgroundColor: Color.fromRGBO(250, 249, 246, 1),
       type: BottomNavigationBarType.fixed,
       currentIndex: indexValue,
       selectedItemColor:Color.fromRGBO(245, 96, 7, 1) ,

       selectedIconTheme: IconThemeData(
         color: Color.fromRGBO(245, 96, 7, 1),

       ),
       onTap: (index){
        {
          setState((){
            indexValue=index;
          });

          };
       },
       items: const[
         BottomNavigationBarItem(
           icon: Icon(Icons.home),
           label: 'Home',
         ),BottomNavigationBarItem(
           icon: Icon(Icons.add_business_rounded),
           label: 'Orders',
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.add_shopping_cart_outlined,

           ),
           label: 'Vouchers',
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.local_offer_rounded,
               ),
           label: 'Offers',
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.person, ),
           label: 'Profile',
         ),
       ],
     ),
     body:  pages[indexValue],
   );
  }
}
