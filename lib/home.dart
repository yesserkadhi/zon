import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List list = [];

  Future GetData() async {
    var url = "http://zonatrm.cluster027.hosting.ovh.net/php_files/getdata.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var red = json.decode(res.body);
      setState(() {
        list.addAll(red);
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    GetData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("app"),
        ),
        body: ListView.builder(
            itemCount: list.length,
            itemBuilder: (cts, i) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text('${list[i]["login"]}'),
                  subtitle: Text('${list[i]["password"]}'),
                  leading: CircleAvatar(
                    radius: 20,
                    child: Icon(Icons.verified_user_rounded),
                  ),
                  trailing: Text("an"),
                ),
              );
            }));
  }
}
