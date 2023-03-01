import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
import 'dashboard.dart';
import 'login.dart';
import 'register.dart';


class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();
  String user_log='';



  bool isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/bg.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
          child: Column(
              children: [
                Align(
                  child:Container(
                    margin:EdgeInsets.fromLTRB(0, 40, 0, 0),
                    height:150,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 0, left: 60,top:0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Image(image: AssetImage('images/logo.png')),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height:0,
                ),
                Align(

                  child:Container(

                    margin:EdgeInsets.fromLTRB(0, 0, 0, 0),
                    height:600,
                    child: Image.asset('images/yes.png', width: 500,
                  height: 600,
                ),
                ),
                    ),


                const SizedBox(
                  height: 0,
                ),
                Align(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage(),
                        ));  // Do something when the button is pressed
                      },
                      child: Text('START',textAlign: TextAlign.center,style: TextStyle(fontSize: 28,fontWeight: FontWeight.w600)),

                      style: ElevatedButton.styleFrom(
                          primary: Color(0xFF547316) ,
                          shape: StadiumBorder(),
                        padding:EdgeInsets.fromLTRB(60, 15, 60, 15),

                      ),
                    ),
                  ),

                const SizedBox(
                  height: 20,
                  
                ),


              ],

          ),
          ),
        /*Stack(
          children: [
            // Background image
            Positioned.fill(
              child: Image.asset(
                'images/bg.jpg',
                fit: BoxFit.cover,
              ),
            ),
            // Logo in the center of the screen
            Positioned(
              width:600,
              height:150,
              left : -80,
              top : 80 ,
              child:Image.asset('images/logo.png'),
            ),
            Positioned(
              width:600,
              height:800,
              left : -85,
              top : 60 ,
              child:Image.asset('images/yes.png'),
            ),
            // Button at the bottom of the screen
            Positioned(
              bottom: 120,
              left: 50,
              right: 50,
              height: 50,

              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  LoginPage()),
                  );

                  // Do something when the button is pressed
                },

                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF547316) ,
                    shape: StadiumBorder()
                ),
                child: Text('START',textAlign: TextAlign.center,style: TextStyle(fontSize: 28,fontWeight: FontWeight.w600)),

              ),
            ),
          ],*/
        ),
      ),
    );
  }
}
