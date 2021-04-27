import 'package:flutter/material.dart';
class ResultPage extends StatefulWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF0A0E21),
    appBar: AppBar(
    title: Text("YOUR RESULT"),
    ),
    );
  }
}
