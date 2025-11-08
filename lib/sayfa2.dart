import 'package:flutter/material.dart';

class Sayfa2 extends StatefulWidget {
  @override
  State<Sayfa2> createState() => _Sayfa2State();
}

class _Sayfa2State extends State<Sayfa2> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("SAYFA 2", style: TextStyle(color: Colors.black54, fontSize: 30)),
    );
  }
}
