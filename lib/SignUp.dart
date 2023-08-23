import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:talabat/HomePage.dart';

class ss extends StatefulWidget {
  //lol(Key?key) :super(key: key);

  @override
  State<ss> createState() => SignUp_page();
}
class SignUp_page extends State<ss>{
  bool ? rememberMe=false;
  final formkey = GlobalKey<FormState>();
  void checkboxchange(bool? val) {
  setState(() {
    rememberMe = val!;
  });
}
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white60,

        ),
        child: SingleChildScrollView(
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
                    child: Form(
                      key : formkey,
                      child: Column(

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
                          CheckboxListTile(
                            value: rememberMe,
                            onChanged: checkboxchange,
                            title: Text(
                              "Remember me",
                              style: TextStyle(fontSize: 15, color: Colors.black),
                            ),
                            activeColor: Colors.orange,
                            controlAffinity: ListTileControlAffinity.leading,
                            contentPadding: EdgeInsets.only(left: 30),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height/7,),
                          InkWell(
                            onTap: (){
                              if(formkey.currentState!.validate()){
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>lol()));
                              }
                            },
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
                  ),

                ],
              )
          ),
        ),
      ),
    );
  }

}