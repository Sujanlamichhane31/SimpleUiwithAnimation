import 'package:complexui1/clipper.dart';
import 'package:complexui1/screen/fadeanimation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child:  Column(
            children: [
              Container(
                
                child: Stack(
                  children: [
                    FadeAnimation(delay: 2,
                      child: ClipPath(
                        clipper: MyClipper(),
                        child: Image.asset(
                            "assets/moon.jpg"
                        ),
                      ),
                    ),
                    Positioned(
                        child: Container(
                          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/4),
                          child: Center(
                            child: Text(
                                "Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold
                            ),),
                          ),
                        )),
                    
                  ],
                )
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(143, 148, 251, 1),
                          blurRadius: 20.0,
                          offset: Offset(0, 10)
                        ),
                      ],
                      color: Colors.grey[100],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Email or Phone Number",
                          hintStyle: TextStyle(
                              color: Colors.grey[400]
                          )
                      ),
                    ),
                  ),
                    SizedBox(height: 10.0,),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(143, 148, 251, 1),
                              blurRadius: 20.0,
                              offset: Offset(0, 10)
                          ),
                        ],
                        color: Colors.grey[100],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password",
                            hintStyle: TextStyle(
                                color: Colors.grey[400]
                            )
                        ),
                      ),
                    ),
                  SizedBox(height: 30.0,),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(143, 148, 251, 1),
                          Color.fromRGBO(143, 148, 251, 10),
                        ]
                      )
                    ),
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                    SizedBox(height: 70.0,),
                    Text(
                      "Forgot Password",
                      style: TextStyle(
                          color:  Color.fromRGBO(143, 148, 251, 1),
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
  
  
        ),
      ),
    );
  }
}
