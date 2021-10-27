import 'package:flutter/material.dart';
import 'dart:math';

void main() {
   return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent[200],
        appBar: AppBar(
          title: Center(child: Text('Dice')),
          backgroundColor: Colors.blue,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget{
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 5;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
                onPressed: () { 
                  print('Left Button got pressed!');
                  setState(() {
                    leftDiceNumber = Random().nextInt(6)+1;
                  });
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
                onPressed: () {
                  print('Right Button got pressed!');
                  setState(() {
                    rightDiceNumber = Random().nextInt(6)+1;
                  });
                },
                child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
