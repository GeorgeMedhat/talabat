import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'databox.dart';
import 'offers.dart';

class OrderFood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width-MediaQuery.of(context).size.width/10,
              decoration: BoxDecoration(
                  color: Colors.white60
              ),
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height:MediaQuery.of(context).size.height/13 ,),
                    Row(
                      children: [
                        SizedBox(width: MediaQuery.of(context).size.width/30,),
                        Container(
                          width: MediaQuery.of(context).size.width/8,
                          decoration: BoxDecoration(

                            borderRadius: BorderRadius.all(Radius.circular(8.0)),


                          ),
                          child: CircleAvatar(
                            radius: 48,
                            backgroundImage: AssetImage('assets/images/profilepic.jpg'),
                          ),

                        ),
                        SizedBox(width: MediaQuery.of(context).size.width/30,),
                        Column(
                          crossAxisAlignment:CrossAxisAlignment.start ,
                          children: [

                            Text('Hello',style: TextStyle(
                                color: Color.fromRGBO(235, 172, 0, 1),
                                fontSize: 20
                            ),),
                            Text('Nada abdelnasser',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                            ))
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height/40,),
                    Stack(
                      children: [
                        Material(
                          // shadowColor: Colors.black,
                          //elevation: 20,

                          child: TextField(
                            decoration: InputDecoration(
                                border:OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                  ),
                                  borderRadius: BorderRadius.circular(50),

                                ),
                                floatingLabelBehavior: FloatingLabelBehavior.never,
                                label: Center(child: Text('talabat',style: TextStyle(
                                  fontFamily: 'talabat',
                                  fontSize: 30,
                                  color: Color.fromRGBO(245, 96, 7, 1),
                                ),),)
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: InkWell(
                              onTap: (){},
                              child: Container(
                                width: MediaQuery.of(context).size.width/7,
                                height: MediaQuery.of(context).size.height/15,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Color.fromRGBO(245, 96, 7, 1)
                                ),
                                child: Center(child: Icon(Icons.search,color: Colors.white,size: 35,)),
                              )
                          ),
                        )
                      ],
                    ),
                    SizedBox(height:MediaQuery.of(context).size.height/40 ,)
                    ,Container(
                        height: MediaQuery.of(context).size.height/7,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(245, 96, 7, 1),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child :Row(
                          children: [
                            SizedBox(width: MediaQuery.of(context).size.width/9,),

                            Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: MediaQuery.of(context).size.height/50,),
                                  Text("talabat mart",style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'talabat',
                                      fontSize: 15
                                  ),),
                                  Text("20 mins delivery",style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'talabat',
                                      fontSize: 15
                                  )),
                                  SizedBox(height: MediaQuery.of(context).size.height/50,)
                                  ,InkWell(
                                    child: Container(
                                      width: MediaQuery.of(context).size.width/6,
                                      height: MediaQuery.of(context).size.height/35,
                                      decoration: BoxDecoration(

                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(50)
                                      ),
                                      child: Center(
                                        child: Text("Shop now",style: TextStyle(
                                            color: Color.fromRGBO(245, 96, 7, 1),
                                            fontFamily: 'talabat',
                                            fontSize: 12
                                        ),),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                            ,
                            SizedBox(width: MediaQuery.of(context).size.width/7,),
                            Image(image: AssetImage('assets/images/cart.png'))
                          ],

                        )
                    )

                  ],
                ),
              ),

            ),
          ),
          Container(
            child: Row(
              children: [
                SizedBox(width: MediaQuery.of(context).size.width/20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height/40,),
                    Text('Categories',style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),textAlign: TextAlign.start),


                  ],
                ),
              ],
            ),
          )
          ,
          SizedBox(height: MediaQuery.of(context).size.height/60,),

          SizedBox(
            height: MediaQuery.of(context).size.height/8,
            child: Scrollbar(
              interactive: true,

              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width/20,),
                  foodwidget(AssetImage('assets/images/pizza.jpg'), "Food"),
                  SizedBox(width: MediaQuery.of(context).size.width/20,),
                  foodwidget(AssetImage('assets/images/groceries.jpg'), "groceries"),
                  SizedBox(width: MediaQuery.of(context).size.width/20,),
                  foodwidget(AssetImage('assets/images/pizza.jpg'), "Food")
                ],

              ),
            ),
          )
          ,
          Row(
            children: [
              SizedBox(width: MediaQuery.of(context).size.width/20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  SizedBox(height: MediaQuery.of(context).size.height/40,),
                  Text('Offers',style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),textAlign: TextAlign.start),


                ],
              ),
            ],
          )
          ,
          SizedBox(height: MediaQuery.of(context).size.height/40,),
          offer(),

        ],

      ),

    );
  }

}
