import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      home: new HomeRuta(),
    ),
  );
}

class HomeRuta extends StatefulWidget {
  @override
  _HomeRutaState createState() => _HomeRutaState();
}

class _HomeRutaState extends State<HomeRuta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
