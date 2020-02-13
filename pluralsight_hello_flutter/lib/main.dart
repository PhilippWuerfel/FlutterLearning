import 'package:flutter/material.dart';
import 'package:pluralsight_hello_flutter/screens/home.dart';

void main() => runApp(Home());

class MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Main Screen Widget",
      home: Scaffold(
          appBar: AppBar(
            title: Text("Title in Main Screen Widget"),
          ),
          body: Home()),
    );
  }
}
