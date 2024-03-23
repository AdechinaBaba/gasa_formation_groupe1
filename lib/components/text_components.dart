import 'package:flutter/material.dart';
class TextComponents extends StatelessWidget {
  String ? title;
  Color? color;
  TextComponents({super.key, required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text("${title}", style: TextStyle(fontSize: 23, color: color, fontWeight: FontWeight.bold),),
      ),
    );
  }
}
