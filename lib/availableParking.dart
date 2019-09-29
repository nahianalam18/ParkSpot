import 'package:flutter/material.dart';

class AvailableParking extends StatefulWidget {
  AvailableParking({Key key}) : super(key: key);

  _AvailableParkingState createState() => _AvailableParkingState();
}

class _AvailableParkingState extends State<AvailableParking> {
  int booked;
  int available;
  int total;
  @override
  void initState() {
    super.initState();
    booked = 75;
    total = 100;
    available = total - booked;
  }

  parkIncrementer() {
    setState(() {
      booked += 3;
      available = total - booked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Parking Spots",
            style: TextStyle(fontSize: 30, color: Colors.blue)),
      ),
      body: Center(
        child: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Total Spots: $total",
                style: TextStyle(fontSize: 25, color: Colors.blue)),
            Image.asset("./assets/dummyParking.jpg"),
            Text("Available Spots: $available",
                style: TextStyle(fontSize: 25, color: Colors.green)),
            RaisedButton(onPressed: parkIncrementer)
          ],
        )),
      ),
    );
  }
}
