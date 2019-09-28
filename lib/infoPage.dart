import 'package:flutter/material.dart';
import "./testPage.dart";

class InfoPage extends StatefulWidget {
  InfoPage({Key key}) : super(key: key);

  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text("Park Spot"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text("   HA    hA HA    "),
            RaisedButton(
              child: Text("CLICK ME!"),
              onPressed: () {
                print("WORKS");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TestPage()));
              },
            ),
            RaisedButton(
              child: Text("CLICK ME!"),
              onPressed: () {
                print("WORKS");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TestPage()));
              },
            )
          ],
        ),
      ),
    ));
  }
}
