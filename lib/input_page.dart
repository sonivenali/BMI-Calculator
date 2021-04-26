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
        body: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: Container(
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Color(0xFF1D1E33),
                      borderRadius: BorderRadius.circular(10)),
                )),
                Expanded(child: Container(
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Color(0xFF1D1E33),
                      borderRadius: BorderRadius.circular(10)),
                )),
              ],
            )),
            Expanded(child: Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Color(0xFF1D1E33),
                  borderRadius: BorderRadius.circular(10)),
            )),
            Expanded(
                child: Row(children: [
              Expanded(child: Container(
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Color(0xFF1D1E33),
                    borderRadius: BorderRadius.circular(10)),
              )),
              Expanded(child: Container(
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Color(0xFF1D1E33),
                    borderRadius: BorderRadius.circular(10)),
              )),
            ])),
          ],
        ));
  }
}
