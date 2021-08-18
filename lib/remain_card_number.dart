import 'package:flutter/material.dart';

class RemainCardNumber extends StatefulWidget {
  RemainCardNumber({Key? key}) : super(key: key);

  @override
  _RemainCardNumberState createState() => _RemainCardNumberState();
}

class _RemainCardNumberState extends State<RemainCardNumber> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 60,
      decoration: BoxDecoration(
          color: Colors.blueAccent,
          border: Border.all(
              color: Colors.blueGrey, width: 5, style: BorderStyle.solid)),
      child: Center(
          child:
              Text('13', style: TextStyle(color: Colors.white, fontSize: 20))),
    );
  }
}
