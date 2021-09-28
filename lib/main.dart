//import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // darkTheme: ThemeData(
      //     scaffoldBackgroundColor: Colors.black,
      //     textTheme:
      //         TextTheme(headline3: TextStyle(fontFamily: "Blue Vinyl", color: Colors.white))),
      theme: ThemeData(
        textTheme:
            TextTheme(headline3: TextStyle(fontFamily: "Blue Vinyl", color: Colors.black)),
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        child: Column(
          children: [
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 40),
                  alignment: Alignment.topCenter,
                  //color: Colors.amber,
                  width: 200,
                  child: DropdownButtonFormField(dropdownColor: Colors.amber, items: [
                    DropdownMenuItem(
                        child: Text(
                      'English (United States)',
                    )),
                  ]),
                ),
              ],
            )),
            Expanded(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        "Instagram",
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      TextFormField(
                        enabled: true,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(18.0),
                            filled: true,
                            fillColor: Color(0xFFEFEFEF),
                            hintText: 'Phone number, email or username',
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6.0),
                                borderSide: BorderSide(color: Colors.black38))),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      TextFormField(
                        obscureText: true,
                        enabled: true,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(18.0),
                            filled: true,
                            fillColor: Color(0xFFEFEFEF),
                            hintText: 'Password',
                            enabledBorder: OutlineInputBorder(
                                //gapPadding: 10.0,
                                borderRadius: BorderRadius.circular(6.0),
                                borderSide: BorderSide(color: Colors.black38))),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                'Log in',
                              ),
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  primary: Color(0xFFA6E0FF),
                                  padding: EdgeInsets.all(18.0)),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
