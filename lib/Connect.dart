import 'package:flutter/material.dart';
import 'package:flutter_application_1/Bluetooth.dart';
//import 'package:flutter_blue/flutter_blue.dart';

class BluePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Connect(),
    );
  }
}

class Connect extends StatefulWidget {
  //MyConnect({Key key, this.title}) : super(key: key);

  @override
  _MyConnect createState() => _MyConnect();
}

class _MyConnect extends State<Connect> {
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
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  '                                                                                       '
                  'To get started,make sure your bluetooth and location are turned on.'
                  'We recommend to let Adrich access these ALLOW ALL THE TIME'
                  '                                                                                       '
                  '                                                                                       '
                  '                                                                                       '
                  '                                                                                       ',
                  //'I need help',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 60.0),
              child: IconButton(
                icon: const Icon(Icons.location_on),
                iconSize: 50,
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 250.0),
              child: IconButton(
                icon: const Icon(Icons.bluetooth),
                iconSize: 50,
                onPressed: () {},
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
                      context, MaterialPageRoute(builder: (_) => Bluetooth()));
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
