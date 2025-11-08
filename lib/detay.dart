import 'package:flutter/material.dart';

class detaySayfa extends StatefulWidget {
  String ulkeAdi="";

  detaySayfa({required this.ulkeAdi});

  @override
  State<detaySayfa> createState() => _detaySayfaState();
}

class _detaySayfaState extends State<detaySayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            title: Text("Detay")
        ),
        body: Center(
          child: Text("${widget.ulkeAdi}", style: TextStyle(
              fontSize: 30,
            ),
          ),
        )
    );
  }
}
