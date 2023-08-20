import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp_page extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    bool ? rememberMe=false;
    final formkey = GlobalKey<FormState>();
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white60,

        ),
        child: Center(
           child : Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height/7,),
                Text("talabat", style: TextStyle(

                  fontFamily: "talabat",
                  fontSize: 80,
                  color: Color.fromRGBO(245, 96, 7, 1),

                ),),
               
                Text("Sign up for free" , style: TextStyle(

                  //fontFamily: "talabat",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,

                )),
                SizedBox(height: MediaQuery.of(context).size.height/15 ,),
                Container(
                  width: MediaQuery.of(context).size.width-MediaQuery.of(context).size.width/6,
                  child: Column(
                    key : formkey,

                    children: [
                      TextFormField(
                        validator: (value){
                        if(value!.length<3){
                          return "please enter a valid name ";
                        }
                        },
                        decoration:InputDecoration(

                          border: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(20),

                          ),
                          labelText:"Name",
                          prefixIcon: Icon(Icons.person,color: Color.fromRGBO(245, 96, 7, 1),size: 30,)
                        ),

                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/40,),
                      TextFormField(
                        validator: (value){
                          if(!(value!.contains('@')&&value.contains('.com'))){
                            return "please enter a valid email ";
                          }
                        },
                        decoration:InputDecoration(

                            border: OutlineInputBorder(

                              borderRadius: BorderRadius.circular(20),

                            ),
                            labelText:"Email",
                            prefixIcon: Icon(Icons.email,color: Color.fromRGBO(245, 96, 7, 1),size: 30,)
                        ),

                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/40,),
                      TextFormField(
                        validator: (value){
                          if(value!.length<8){
                            return "password mush be larger than 8 letters";
                          }
                        },
                        decoration:InputDecoration(

                            border: OutlineInputBorder(

                              borderRadius: BorderRadius.circular(20),

                            ),
                            labelText:"Password",
                            prefixIcon: Icon(Icons.lock,color: Color.fromRGBO(245, 96, 7, 1),size: 30,)
                        ),

                      ),
                      CheckboxListTile(value: rememberMe,
                        controlAffinity: ListTileControlAffinity.leading
                        ,
                        onChanged: (bool? value){
                          setState(){
                            rememberMe=value;

                          }
                        },
                        title: Text("Remember Me?"),

                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/7,),
                      InkWell(
                          child: Container(
                          width:MediaQuery.of(context).size.width-MediaQuery.of(context).size.width/6 ,
                          height:MediaQuery.of(context).size.height/15,
                          decoration: BoxDecoration(
                            color:Color.fromRGBO(245, 96, 7, 1),
                            borderRadius: BorderRadius.circular(20)

                          ),
                          child: Center(
                              child:Text("Create Account",style: TextStyle(
                                //fontFamily: "talabat",
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),)
                          ),
                      )
                      )
                    ],
                  ),
                ),

              ],
            )
        ),
      ),
    );
  }

}