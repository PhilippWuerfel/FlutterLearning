import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color(0xff009688),
        accentColor: Color(0xff7C4DFF),
        textTheme: TextTheme(
          bodyText2: TextStyle(fontSize: 24, fontStyle: FontStyle.italic),
        )
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Building Layouts with Flutter"),
        ),
        body: Center(
          child: Text(
            "Testing Flutter layouts",
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.lightbulb_outline),
          onPressed: () {
            print("Lightbulbing...");
          },
        ),
        persistentFooterButtons: <Widget>[
          IconButton(
            icon: Icon(Icons.map),
            onPressed: () => print("Mapping..."),
          ),
          IconButton(
            icon: Icon(Icons.update),
            onPressed: () => print("Updating..."),
          ),
          IconButton(
            icon: Icon(Icons.access_time),
            onPressed: () => print("Acessing time..."),
          )
        ],
      ),
    );
  }
}
