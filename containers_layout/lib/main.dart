import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Container'),
          ),
          body: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(50.0),
//                child: Text("Hello Container"),
//                child: Center(
//                    child: Text("Test")),
                width: 300.0,
                height: 300.0,
                child: FlutterLogo(),
                decoration: BoxDecoration(
                    color: Colors.orange,
                    gradient: LinearGradient(
//                    begin: Alignment.topCenter,
//                    end: Alignment.bottomCenter,
                        begin: Alignment(0.0, -1.0),
                        end: Alignment(0.0, 1.0),
                        tileMode: TileMode.clamp,
                        colors: [Colors.purple[50], Colors.purple[500]]),
//                    image: DecorationImage(
//                      image: NetworkImage('http://bit.ly/flutter_tiger'),
//                    ),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(30.0))),
              )
            ],
          )),
    );
  }
}
