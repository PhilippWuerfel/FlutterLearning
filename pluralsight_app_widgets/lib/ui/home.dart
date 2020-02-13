import 'package:flutter/material.dart';

class Home extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      color: Colors.black87,
      child: Text("Test", textDirection: TextDirection.ltr,),
    );
  }
}