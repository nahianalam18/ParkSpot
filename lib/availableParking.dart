import 'package:flutter/material.dart';

class AvailableParking extends StatefulWidget {
  AvailableParking({Key key}) : super(key: key);

  _AvailableParkingState createState() => _AvailableParkingState();
}

class _AvailableParkingState extends State<AvailableParking> {
  int counter = 15;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Parking Spots"),
      ),
      body: Center(
        child: Container(
            child: Column(
          children: <Widget>[
            Image.asset("./assets/dummyParking.jpg"),
            Text("Available Spots: "),
            Text("$counter")
          ],
        )),
      ),
    );
  }
}
