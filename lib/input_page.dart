import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF0A0E21),
        appBar: AppBar(
          title: Text("BMI CALCULATOR"),
          leading: Icon(Icons.menu),
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            top: 14,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF1D1E33)),
                width: 150,
                height: 200,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF1D1E33)),
                width: 140,
                height: 200,
              ),
            ],
          ),
        ));
  }
}
