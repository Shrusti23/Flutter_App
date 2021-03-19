import 'package:flutter/material.dart';
import 'package:flutter_application_1/HomePage.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              //height: 50,
              //width: 350,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Notifications',
                  style: TextStyle(color: Colors.black, fontSize: 28),
                ),
              ),
            ),
            Padding(
              // padding: const EdgeInsets.only(
              //   top: 30.0,
              //   right: 300,
              // ),
              padding: EdgeInsets.symmetric(horizontal: 50),

              child: Column(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  /** Checkbox Widget **/
                  Checkbox(
                    value: this.value,
                    onChanged: (bool value) {
                      setState(() {
                        this.value = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0, bottom: 50),
              // padding: EdgeInsets.symmetric( horizontal: 45 ),

              child: Column(
                children: [
                  Text(
                    'I want to recieve notifications from Adrich',
                    style: TextStyle(fontSize: 15.0),
                  ), //Text
                ], //<Widget>[]
                //Row
                //Column
              ), //SizedBox
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Phone',
                    hintText: 'XXXXXXXXXX'),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => HomePage()));
                },
                child: Text(
                  'Submit',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
/*  child: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },*/
