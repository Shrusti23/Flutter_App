import 'package:flutter/material.dart';

import 'main.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Register Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
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
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter valid email id as abc@gmail.com'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                right: 300,
              ),
              // padding: EdgeInsets.symmetric(horizontal: 50),

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
              padding: const EdgeInsets.only(left: 40, top: 10),
              // padding: EdgeInsets.symmetric( horizontal: 45 ),

              child: Column(
                children: [
                  Text(
                    'Check here to indicate that you have read and accepted the terms of Adrich',
                    style: TextStyle(fontSize: 15.0),
                  ), //Text
                ], //<Widget>[]
                //Row
                //Column
              ), //SizedBox
            ),

            Container(
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Login here',
                  style: TextStyle(color: Colors.blueAccent, fontSize: 15),
                ),
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
                      context, MaterialPageRoute(builder: (_) => MyApp()));
                },
                child: Text(
                  'Submit',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: 130,
            ),
            // Text('New User? Create Account')
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
