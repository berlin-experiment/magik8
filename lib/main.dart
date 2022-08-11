import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[500],
        appBar: AppBar(
          title: Text('Ask Me Something...'),
          backgroundColor: Colors.grey[900],
        ),
        body: Magik8(),
      ),
    ),
  );
}

class Magik8 extends StatefulWidget {
  const Magik8({Key? key}) : super(key: key);

  @override
  State<Magik8> createState() => _Magik8State();
}

class _Magik8State extends State<Magik8> {
  int answer = 1;

  void getAnswer() {
    setState(() {
      answer = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  getAnswer();
                });
              },
              child: Image.asset('images/ball$answer.png'),
            ),
          ),
        ],
      ),
    );
  }
}
