import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String selected = "";
  int weight = 30;
  int age = 30;

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
                  child: buildBox(
                      Icon(
                        FontAwesomeIcons.mars,
                        size: 80,
                      ),
                      "MALE"),
                ),
                Expanded(
                    child: buildBox(
                        Icon(
                          FontAwesomeIcons.venus,
                          size: 80,
                        ),
                        "FEMALE")),
              ],
            )),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Color(0xFF111328),
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            Expanded(
                child: Row(children: [
              Expanded(child: buildWeight()),
              Expanded(child: buildAge())
            ])),
            Container(
              child: Center(
                  child: Text(
                "CALCULATE",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              )),
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: 80,
            )
          ],
        ));
  }

  Widget buildWeight() {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Color(0xFF111328), borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "WEIGHT",
            style: TextStyle(
                color: Color(
                  0xFF8D8E98,
                ),
                fontSize: 18),
          ),
          Text(weight.toString()),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
              children: [
                Expanded(
                  child: RawMaterialButton(
                    onPressed: () {},
                    elevation: 2.0,
                    fillColor: Color(0xFF8D8E98),
                    child: Icon(Icons.remove, size: 15),
                    padding: EdgeInsets.all(15.0),
                    shape: CircleBorder(),
                  ),
                ),
                Expanded(
                  child: RawMaterialButton(
                    onPressed: () {},
                    elevation: 2.0,
                    fillColor: Color(0xFF8D8E98),
                    child: Icon(Icons.add, size: 15),
                    padding: EdgeInsets.all(15.0),
                    shape: CircleBorder(),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildAge() {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Color(0xFF111328), borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "AGE",
            style: TextStyle(
                color: Color(
                  0xFF8D8E98,
                ),
                fontSize: 18),
          ),
          Text(age.toString()),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
              children: [
                Expanded(
                  child: RawMaterialButton(
                    onPressed: () {},
                    elevation: 2.0,
                    fillColor: Color(0xFF8D8E98),
                    child: Icon(Icons.remove, size: 15),
                    padding: EdgeInsets.all(15.0),
                    shape: CircleBorder(),
                  ),
                ),
                Expanded(
                  child: RawMaterialButton(
                    onPressed: () {},
                    elevation: 2.0,
                    fillColor: Color(0xFF8D8E98),
                    child: Icon(Icons.add, size: 15),
                    padding: EdgeInsets.all(15.0),
                    shape: CircleBorder(),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildBox(icon, String label) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = label;
        });
      },
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Color(selected == label ? 0xFF1D1E33 : 0xFF111328),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            SizedBox(
              height: 15,
            ),
            Text(
              label,
              style: TextStyle(
                  color: Color(
                    0xFF8D8E98,
                  ),
                  fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
