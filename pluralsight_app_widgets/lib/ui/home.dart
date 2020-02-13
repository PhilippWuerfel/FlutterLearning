import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(15.0),
            color: Colors.black87,
            child: Column(children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    "Test",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 30.0,
                      decoration: TextDecoration.none,
                      fontFamily: 'Oxygen',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Tomato, Salt, Pepper, Oregano",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 30.0,
                        decoration: TextDecoration.none,
                        fontFamily: 'Oxygen',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    "Test2",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 30.0,
                      decoration: TextDecoration.none,
                      fontFamily: 'Oxygen',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Tomato, Salt, Pepper, Oregano",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 30.0,
                        decoration: TextDecoration.none,
                        fontFamily: 'Oxygen',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  )
                ],
              ),
              SurfImageWidget(),

            ])));
  }
}

class SurfImageWidget extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    AssetImage surfAsset = AssetImage('images/surf_icon.png');
    Image image = Image(image: surfAsset, width: 400, height: 400,);
    return Container( child: image);
  }
}
