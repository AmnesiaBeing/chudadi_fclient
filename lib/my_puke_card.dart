import 'package:flutter/material.dart';

String number2string(int number) {
  if (number >= 1 && number <= 10)
    return number.toString();
  else if (number >= 11 && number <= 13)
    return ['J', 'Q', 'K'][number - 11];
  else
    return '';
}

const suits_char = ['', '♦', '♣️', '♥', '♠️'];
const suits_color = [null, Colors.red, Colors.black, Colors.red, Colors.black];

// 花色，黑红梅方按照从小到大顺序排列
enum suits { none, diamond, clover, heart, spade }

class MyPukeCard extends StatelessWidget {
  final suits suit;
  final int number;

  const MyPukeCard({required this.suit, required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
            width: 1, color: Colors.black38, style: BorderStyle.solid),
        borderRadius: BorderRadius.all(Radius.circular(8)),
        color: Colors.white,
      ),
      height: 150,
      width: 100,
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
                          fontSize: 30, color: suits_color[this.suit.index]),
                    )
                  ],
                ),
              )),
          Positioned(
              right: 0,
              bottom: 0,
              child: Text(
                suits_char[this.suit.index],
                style: TextStyle(fontSize: 70),
              ))
        ],
      ),
    );
  }
}
