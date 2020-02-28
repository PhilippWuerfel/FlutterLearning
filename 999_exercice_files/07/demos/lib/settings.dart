import './util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  int unit = 0;
  @override
  Widget build(BuildContext context) {
    
    double width = MediaQuery.of(context).size.width;
    Map<int, Widget> systems = {
      0: Text('Decimal'),
      1: Text('Imperial'),
    };
    Util.getSettings().then(updateControl);
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(middle: Text('Settings')),
        child: SafeArea(
            minimum: EdgeInsets.all(0),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.network('https://bit.ly/fl_earth'),
                Util.paddingTop,
                Row(children: <Widget>[ 
                  SizedBox(width: width,
                  child:
                  CupertinoSegmentedControl(
                    children: systems,
                    groupValue: unit,
                    onValueChanged: (value) {
                      Util.saveSettings(value);
                      updateControl(value);
                    },
                  ))
                  
                  
                ],),
              ],
            )));
  
  }
  void updateControl(value) {
    if (value != unit) {
      setState(() {
        unit = value;
      });
    }
  }
  
  

}