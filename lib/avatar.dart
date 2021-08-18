import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 128,
      height: 128,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
              color: Colors.brown, width: 5, style: BorderStyle.solid)),
    );
  }
}
