import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stack',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stack'),
        ),
        backgroundColor: Colors.indigo[100],
        body: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sizeX = MediaQuery.of(context).size.width;
    final sizeY = MediaQuery.of(context).size.height;

    return Container(
      width: sizeX,
      height: sizeY,
      child: Stack(
//        verticalDirection: VerticalDirection.up,
//        textDirection: TextDirection.rtl,
        children: createSquares(5),
      ),
    );
  }

  List<Widget> createSquares(int numSquares) {
    int i = 0;
    List colors = [
      Colors.amber,
      Colors.deepPurple,
      Colors.deepOrange,
      Colors.indigo,
      Colors.lightBlue
    ];
    List<Widget> squares = List<Widget>();

    squares.add(Container(color: Colors.black));

    while (i < numSquares) {
      Positioned square = Positioned(
          top: 100 + i.toDouble()*100,
          left: 25 + i.toDouble()*25,
          child: Container(
            color: colors[i],
            width: 60.0 * (numSquares - i),
            height: 60.0 * (numSquares - i),
            child: Text(i.toString()),
          ));
      i++;
      squares.add(square);
    }
    return squares;
  }
}
