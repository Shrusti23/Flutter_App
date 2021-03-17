import 'package:flutter/material.dart';
import 'package:flutter_application_1/HomePage.dart';

class BluePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Bluetooth(),
    );
  }
}

class Bluetooth extends StatefulWidget {
  //MyBluetooth({Key key, this.title}) : super(key: key);

  @override
  _MyBluetooth createState() => _MyBluetooth();
}

class _MyBluetooth extends State<Bluetooth> {
  // final String title;

  //_MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              //height: 50,
              //width: 350,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  '                                                                                       '
                  'Keep your phone nearby when you first use your product'
                  '                                                                                       '
                  '                                                                                       '
                  '                                                                                       '
                  '                                                                                       '
                  'It will take a few sseconds to connect to your product after using it.'
                  'Once your product icon appears on the screen',
                  //'I need help',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 310.0),
              child: Center(
                child: Container(
                  width: 200,
                  height: 150,
                  /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                  // child: Image.asset('asset/images/flutter-logo.png')
                ),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => HomePage()));
                },
                child: Text(
                  'I need Help',
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
