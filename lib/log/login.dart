import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
import 'dashboard.dart';
import 'register.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();
  String user_log='';

  Future login() async {
    var url = Uri.http("zonatrm.cluster027.hosting.ovh.net",
        '/php_files/login.php', {'q': '{http}'});
    var response = await http.post(url, body: {
      "email": user.text,
      "pass": pass.text,
    });
    var data = json.decode(response.body);
    if (data.toString() != "Error") {
      Fluttertoast.showToast(
        msg: 'Login Successful '+data.toString(),
        backgroundColor: Colors.green,
        textColor: Colors.white,
        toastLength: Toast.LENGTH_SHORT,

      );
      user_log=user.text;
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DashBoard(),
        ),
      );
    } else {
      Fluttertoast.showToast(
        backgroundColor: Colors.red,
        textColor: Colors.white,
        msg: 'Username and password invalid',
        toastLength: Toast.LENGTH_SHORT,
      );
    }
  }

  bool isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(


          child: SingleChildScrollView(
            child: Column(

              children: [
                Align(

                  child:Container(

                    margin:EdgeInsets.fromLTRB(0, 0, 0, 0),

                    child: Image.asset('images/bg_log_app.png', width: 700,

                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 160,
                    width: 340,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 25, left: 5),
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
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30)
                      .copyWith(bottom: 10),
                  child: TextField(
                    controller: user,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 19, 19, 19), fontSize: 14.5),
                    decoration: InputDecoration(
                        prefixIconConstraints:
                            const BoxConstraints(minWidth: 45),
                        prefixIcon: const Icon(
                          Icons.person,
                          color: Color.fromARGB(179, 0, 0, 0),
                          size: 22,
                        ),
                        border: InputBorder.none,
                        hintText: 'Téléphone',
                        hintStyle: const TextStyle(
                            color: Color.fromARGB(153, 0, 0, 0),
                            fontSize: 14.5),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100).copyWith(
                                bottomRight: const Radius.circular(0)),
                            borderSide: const BorderSide(
                                color: Color.fromARGB(97, 0, 0, 0))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100).copyWith(
                                bottomRight: const Radius.circular(0)),
                            borderSide: const BorderSide(
                                color: Color.fromARGB(179, 0, 0, 0)))),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30)
                      .copyWith(bottom: 10),
                  child: TextField(
                    controller: pass,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0), fontSize: 14.5),
                    obscureText: isPasswordVisible ? false : true,
                    decoration: InputDecoration(
                        prefixIconConstraints:
                            const BoxConstraints(minWidth: 45),
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Color.fromARGB(179, 0, 0, 0),
                          size: 22,
                        ),
                        suffixIconConstraints:
                            const BoxConstraints(minWidth: 45, maxWidth: 46),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isPasswordVisible = !isPasswordVisible;
                            });
                          },
                          child: Icon(
                            isPasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Color.fromARGB(179, 0, 0, 0),
                            size: 22,
                          ),
                        ),
                        border: InputBorder.none,
                        hintText: 'Mot de passe',
                        hintStyle: const TextStyle(
                            color: Color.fromARGB(153, 0, 0, 0),
                            fontSize: 14.5),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100).copyWith(
                                bottomRight: const Radius.circular(0)),
                            borderSide: const BorderSide(
                                color: Color.fromARGB(97, 4, 4, 4))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100).copyWith(
                                bottomRight: const Radius.circular(0)),
                            borderSide: const BorderSide(
                                color: Color.fromARGB(179, 0, 0, 0)))),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Align(

                  child: Container(
                    height: 53,
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 30),
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
                      onPressed: () {
                        login();

                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(0, 0, 0, 0),
                        shadowColor: Color.fromARGB(0, 0, 0, 0),
                        //onPrimary: Colors.black,
                      ),
                      child: Text('Se connecter',
                          style: TextStyle(
                              color:
                              Color.fromARGB(255, 15, 76, 45).withOpacity(.8),
                              fontSize: 25,
                              fontWeight: FontWeight.w600)),
                    ),

                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text('Créer compte?',
                    style: TextStyle(color: Colors.white70, fontSize: 13)),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Register()),
                    );
                  },
                  child: Container(
                    height: 53,
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color.fromARGB(153, 0, 0, 0)),
                      borderRadius: BorderRadius.circular(100)
                          .copyWith(bottomRight: const Radius.circular(0)),
                    ),
                    child: Text('S\'inscrire',
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0).withOpacity(.8),
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
