import 'package:flutter/material.dart';
import 'package:spincircle_bottom_bar/modals.dart';
import 'package:spincircle_bottom_bar/spincircle_bottom_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SpinNav(),
    );
  }
}

class SpinNav extends StatefulWidget {
  @override
  _SpinNavState createState() => _SpinNavState();
}

class _SpinNavState extends State<SpinNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("SpinNav Bar", style: TextStyle(color: Colors.black)),
            backgroundColor: Colors.blueGrey),
        body: SpinCircleBottomBarHolder(
            bottomNavigationBar: SCBottomBarDetails(
                actionButtonDetails: SCActionButtonDetails(
                    color: Colors.blueGrey,
                    icon: Icon(Icons.expand_less),
                    elevation: 0),
                iconTheme: IconThemeData(color: Colors.black),
                activeIconTheme: IconThemeData(color: Colors.black),
                backgroundColor: Colors.blueGrey,
                circleColors: [Colors.blueGrey, Colors.black, Colors.blueGrey],
                bnbHeight: 80,
                items: <SCBottomBarItem>[
                  SCBottomBarItem(
                      icon: Icons.verified_user,
                      onPressed: () {},
                      title: "User"),
                  SCBottomBarItem(
                      icon: Icons.call, onPressed: () {}, title: "Call"),
                  SCBottomBarItem(
                      icon: Icons.email, onPressed: () {}, title: "Email"),
                  SCBottomBarItem(
                      icon: Icons.sms, onPressed: () {}, title: "SMS"),
                ],
                circleItems: [
                  SCItem(icon: Icon(Icons.ac_unit), onPressed: () {}),
                  SCItem(icon: Icon(Icons.ac_unit), onPressed: () {}),
                  SCItem(icon: Icon(Icons.ac_unit), onPressed: () {}),
                ]),
            child: Center(
              child: Text(
                "Thank You For Watching",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold),
              ),
            )));
  }
}
