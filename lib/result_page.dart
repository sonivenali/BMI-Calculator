import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  ResultPage({this.bmiResult, this.interpretation, this.resultText});

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
        body: Column(
          children: [
            Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Container(color: Color(0xFF111328),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(widget.resultText,style: TextStyle(
                          color: Colors.green,
                          fontSize: 24,fontWeight: FontWeight.w600),),
                      Text(widget.bmiResult,style: TextStyle(fontSize: 40),),
                      Text(widget.interpretation,style: TextStyle(fontSize: 20),),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom:8.0),
                child: Container(
                  child: Center(
                    child: Text(
                      "RE-CALCULATE",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  margin: EdgeInsets.only(top: 10),
                  width: double.infinity,
                  height: 80,
                  color: Color(0xFFEB1555),
                ),
              ),
            )
          ],
        ));
  }
}
