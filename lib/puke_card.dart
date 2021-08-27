import 'package:flutter/material.dart';

import 'package:chudadi_fclient/card_model.dart';

class PukeCard extends StatelessWidget {
  final suits suit;
  final int number;

  const PukeCard({required this.suit, required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
            width: 1, color: Colors.black38, style: BorderStyle.solid),
        borderRadius: BorderRadius.all(Radius.circular(8)),
        color: Colors.white,
      ),
      height: 100,
      width: 75,
      child: Stack(
        children: [
          Positioned(
              left: 0,
              child: Padding(
                padding: const EdgeInsets.all(3),
                child: Column(
                  children: [
                    Text(
                      number2string(this.number),
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      suits_char[this.suit.index],
                      style: TextStyle(
                          fontSize: 25, color: suits_color[this.suit.index]),
                    )
                  ],
                ),
              )),
          Positioned(
              right: 0,
              bottom: 0,
              child: Text(
                suits_char[this.suit.index],
                style: TextStyle(fontSize: 50),
              ))
        ],
      ),
    );
  }
}
