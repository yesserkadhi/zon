
import 'dart:ui';
import 'register.dart';
import '../deposer_colis.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Container(
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/dashboard.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(

                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 53,
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 4,
                                color: Colors.black12.withOpacity(.2),
                                offset: const Offset(2, 2))
                          ],
                          borderRadius: BorderRadius.circular(100)
                              .copyWith(bottomRight: const Radius.circular(0)),
                          gradient: LinearGradient(colors: [
                            Color.fromARGB(255, 255, 255, 255),
                            Color.fromARGB(255, 255, 255, 255)
                          ])),
                      child:ElevatedButton(
                        onPressed: () {Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Deposer_colis(),
                            )); },
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(0, 0, 0, 0),
                          shadowColor: Color.fromARGB(0, 0, 0, 0),
                          //onPrimary: Colors.black,
                        ),
                        child: Text('Déposer Colis',
                            style: TextStyle(
                                color:
                                Color.fromARGB(255, 15, 76, 45).withOpacity(.8),
                                fontSize: 25,
                                fontWeight: FontWeight.w600)),
                      ),


                    ),

                  ),

                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 53,
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 4,
                                color: Colors.black12.withOpacity(.2),
                                offset: const Offset(2, 2))
                          ],
                          borderRadius: BorderRadius.circular(100)
                              .copyWith(bottomRight: const Radius.circular(0)),
                          gradient: LinearGradient(colors: [
                            Color.fromARGB(255, 255, 255, 255),
                            Color.fromARGB(255, 255, 255, 255)
                          ])),
                      child:ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(0, 0, 0, 0),
                          shadowColor: Color.fromARGB(0, 0, 0, 0),
                          //onPrimary: Colors.black,
                        ),
                        child: Text('Consulter Vos points',
                            style: TextStyle(
                                color:
                                Color.fromARGB(255, 15, 76, 45).withOpacity(.8),
                                fontSize: 25,
                                fontWeight: FontWeight.w600)),
                      ),

                  ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 53,
                      width: double.infinity,
                      margin: const EdgeInsets.fromLTRB(30, 30, 30, 150),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 4,
                                color: Colors.black12.withOpacity(.2),
                                offset: const Offset(2, 2))
                          ],
                          borderRadius: BorderRadius.circular(100)
                              .copyWith(bottomRight: const Radius.circular(0)),
                          gradient: LinearGradient(colors: [
                            Color.fromARGB(255, 255, 255, 255),
                            Color.fromARGB(255, 255, 255, 255)
                          ])),
                      child:ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(0, 0, 0, 0),
                          shadowColor: Color.fromARGB(0, 0, 0, 0),
                          //onPrimary: Colors.black,
                        ),
                        child: Text('Compte',
                            style: TextStyle(
                                color:
                                Color.fromARGB(255, 15, 76, 45).withOpacity(.8),
                                fontSize: 25,
                                fontWeight: FontWeight.w600)),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(

                      children: [
                       ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFf4f4f4),
                            shadowColor: Color.fromARGB(0, 0, 0, 0),

                            //onPrimary: Colors.black,
                          ),
                         child:Image.asset('images/point.png',width: 50,height:50),
                        ),
                       ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFf4f4f4),
                            shadowColor: Color.fromARGB(0, 0, 0, 0),

                            //onPrimary: Colors.black,
                          ),
                         child:Image.asset('images/notif.png',width: 50,height:50),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Deposer_colis(),
                                ));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFf4f4f4),
                            shadowColor: Color.fromARGB(0, 0, 0, 0),

                            //onPrimary: Colors.black,
                          ),
                          child:Image.asset('images/dep.png',width: 50,height:50),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFf4f4f4),
                            shadowColor: Color.fromARGB(0, 0, 0, 0),

                            //onPrimary: Colors.black,
                          ),
                          child:Image.asset('images/account.png',width: 50,height:50),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFf4f4f4),
                            shadowColor: Color.fromARGB(0, 0, 0, 0),

                            //onPrimary: Colors.black,
                          ),
                          child:Image.asset('images/logout.png',width: 60,height:50),
                        ),
                     /*  Container(
                         padding: const EdgeInsets.only(bottom: 20,top:10, left: 20,right:25),
                         color:Color(0xFFf4f4f4),
                         child:Image.asset('images/point.png',width: 40,height:40),
                       ),
                        Container(
                          padding: const EdgeInsets.only(bottom: 20,top:10, left: 20,right:20),
                          color:Color(0xFFf4f4f4),
                          child:Image.asset('images/notif.png',width: 40,height:40),
                        ),
                        Container(
                          padding: const EdgeInsets.only(bottom: 20,top:10, left: 5,right:5),
                          color:Color(0xFFf4f4f4),
                          child:Image.asset('images/dep.png',width: 40,height:40),
                        ),
                        Container(
                          padding: const EdgeInsets.only(bottom: 20,top:10, left: 5,right:5),
                          color:Color(0xFFf4f4f4),
                          child:Image.asset('images/account.png',width: 40,height:40),
                        ),
                        Container(
                          padding: const EdgeInsets.only(bottom: 20,top:10, left: 5,right:17),
                          color:Color(0xFFf4f4f4),
                          child:Image.asset('images/logout.png',width: 40,height:40),
                        ),*/

                      ],
                      ),
                  ),

            ],
              ),
              ),
        ),
    );
  }
}
