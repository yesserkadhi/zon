import 'dart:ui';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
import 'log/dashboard.dart';

class Deposer_colis extends StatefulWidget {
  const Deposer_colis({Key? key}) : super(key: key);

  @override
  State<Deposer_colis> createState() => _Deposer_colisState();
}

class _Deposer_colisState extends State<Deposer_colis> {

  TextEditingController type = TextEditingController();
  TextEditingController dechet = TextEditingController();
  TextEditingController pt_col = TextEditingController();

  Future add() async {
    var url = Uri.http("zonatrm.cluster027.hosting.ovh.net",
        '/php_files/deposer.php', {'q': '{http}'});
    var response = await http.post(url, body: {
      "type": type.text.toString(),
      "dechet": dechet.text.toString(),
      "pt_col": pt_col.text.toString(),
      });
    var data = json.decode(response.body);
    if (data == "Error") {
      Fluttertoast.showToast(
        backgroundColor: Colors.orange,
        textColor: Colors.white,
        msg: 'User already exit!',
        toastLength: Toast.LENGTH_SHORT,
      );
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Deposer_colis(),
        ),
      );
    }
    else {
      Fluttertoast.showToast(
        backgroundColor: Colors.green,
        textColor: Colors.white,
        msg: 'Successful',
        toastLength: Toast.LENGTH_SHORT,
      );
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DashBoard(),
        ),
      );
    }
  }

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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30)
                    .copyWith(bottom: 10),
              child: widget090(),

              ),
              const SizedBox(
                height: 15,
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
                            color: Colors.black12.withOpacity(.5),
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
                      add();

                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(0, 0, 0, 0),
                      shadowColor: Color.fromARGB(0, 0, 0, 0),
                      //onPrimary: Colors.black,
                    ),
                    child: Text('QrCode Colis',
                        style: TextStyle(
                            color:
                            Color.fromARGB(255, 15, 76, 45).withOpacity(.8),
                            fontSize: 25,
                            fontWeight: FontWeight.w600)),
                  ),

                ),
              ),

              const SizedBox(
                height: 40,
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
                            color: Colors.black12.withOpacity(.5),
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
                      add();

                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(0, 0, 0, 0),
                      shadowColor: Color.fromARGB(0, 0, 0, 0),
                      //onPrimary: Colors.black,
                    ),
                    child: Text('Déposer',
                        style: TextStyle(
                            color:
                            Color.fromARGB(255, 15, 76, 45).withOpacity(.8),
                            fontSize: 25,
                            fontWeight: FontWeight.w600)),
                  ),
                ),
              ),

              const SizedBox(
                height: 40,
              ),
            Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(

                    children: [
                    ElevatedButton(
                    onPressed: () {
                      print('point');
                    },
                    style: ElevatedButton.styleFrom(
                    primary: Color(0xFFf4f4f4),
                    shadowColor: Color.fromARGB(0, 0, 0, 0),

                    //onPrimary: Colors.black,
                    ),
                    child:Image.asset('images/point.png',width: 50,height:50),
                    ),
                    ElevatedButton(
                    onPressed: () {print('notif');},
                    style: ElevatedButton.styleFrom(
                    primary: Color(0xFFf4f4f4),
                    shadowColor: Color.fromARGB(0, 0, 0, 0),

                    //onPrimary: Colors.black,
                    ),
                    child:Image.asset('images/notif.png',width: 50,height:50),
                    ),
                    ElevatedButton(
                    onPressed: () {print('dep');},
                    style: ElevatedButton.styleFrom(
                    primary: Color(0xFFf4f4f4),
                    shadowColor: Color.fromARGB(0, 0, 0, 0),

                    //onPrimary: Colors.black,
                    ),
                    child:Image.asset('images/dep.png',width: 50,height:50),
                    ),
                    ElevatedButton(
                    onPressed: () {print('account');},
                    style: ElevatedButton.styleFrom(
                    primary: Color(0xFFf4f4f4),
                    shadowColor: Color.fromARGB(0, 0, 0, 0),

                    //onPrimary: Colors.black,
                    ),
                    child:Image.asset('images/account.png',width: 50,height:50),
                    ),
                    ElevatedButton(
                    onPressed: () {print('logout');},
                    style: ElevatedButton.styleFrom(
                    primary: Color(0xFFf4f4f4),
                    shadowColor: Color.fromARGB(0, 0, 0, 0),

                    //onPrimary: Colors.black,
                    ),
                    child:Image.asset('images/logout.png',width: 60,height:50),
                    ),
                ]),
              ),

            ],
          ),
        ),
      ),
    );
  }
}



class widget090 extends StatefulWidget {
  const widget090({Key? key}) : super(key: key);

  @override
  State<widget090> createState() => _widget090State();

}

class _widget090State extends State<widget090> {
  String dropdownValue='One';
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 53,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 0,vertical: 00),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                blurRadius: 4,
                color: Colors.black12.withOpacity(.5),
                offset: const Offset(2, 2))
          ],
          borderRadius: BorderRadius.circular(100)
              .copyWith(bottomRight: const Radius.circular(0)),
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 255, 255, 255),
            Color.fromARGB(255, 255, 255, 255)
          ])),
      child:DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.black,fontSize: 27),
      underline: Container(
        height: 2,
        color: Colors.white,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
     items: const [
       DropdownMenuItem<String>(
         value:'One',
         child:Text('Verres'),
       ),
       DropdownMenuItem<String>(
         value:'Two',
         child:Text('Carton'),
       ),
       DropdownMenuItem<String>(
         value:'Three',
         child:Text('Papier'),
       ),
       DropdownMenuItem<String>(
         value:'Four',
         child:Text('Plastique'),
       ),
       DropdownMenuItem<String>(
         value:'Five',
         child:Text('Pile'),
       ),
       DropdownMenuItem<String>(
         value:'Six',
         child:Text('Métal'),
       ),
       DropdownMenuItem<String>(
         value:'Seven',
         child:Text('Aluminium'),
       ),
     ],
        ),
    );
  }
}
