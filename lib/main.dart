import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      appBar: AppBar(
        title: Text('Dice Rollerr'),
        backgroundColor: Colors.deepOrange,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  @override
  _StateDicePage createState() => _StateDicePage();
}

class _StateDicePage extends State<DicePage> {
  int left_image = 6;
  int right_image = 3;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
              child: TextButton(
                child: Image.asset('images/dice$right_image.png'),
                onPressed: () {
                  Random random = new Random();
                  int num = Random().nextInt(5) + 1;
                  setState(() {
                    right_image = num;
                  });
                  print("number $num");
                },
              )),
          Row(
            children: <Widget>[
              Expanded(
                  child: TextButton(
                    child: Image.asset('images/dice$left_image.png'),
                    onPressed: () {
                      Random random = new Random();
                      int num = Random().nextInt(5) + 1;
                      setState(() {
                        left_image = num;
                      });
                      print("number $num");
                    },
                  )),
              Expanded(
                  child: TextButton(
                    child: Image.asset('images/dice$right_image.png'),
                    onPressed: () {
                      Random random = new Random();
                      int num = Random().nextInt(5) + 1;
                      setState(() {
                        right_image = num;
                      });
                      print("number $num");
                    },
                  )),
            ],
          ),
          Expanded(
              child: TextButton(
                child: Image.asset('images/dice$left_image.png'),
                onPressed: () {
                  Random random = new Random();
                  int num = Random().nextInt(5) + 1;
                  setState(() {
                    left_image = num;
                  });
                  print("number $num");
                },
              )),
        ],
      ),
    );
  }
}
