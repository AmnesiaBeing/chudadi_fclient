// 手牌栏

import 'package:chudadi_fclient/my_puke_card.dart';
import 'package:chudadi_fclient/card_model.dart';
import 'package:flutter/material.dart';

List<Widget> renderHandCards() {
  return [
    MyPukeCard(
      suit: suits.clover,
      number: 1,
    ),
    MyPukeCard(
      suit: suits.clover,
      number: 2,
    ),
    MyPukeCard(
      suit: suits.clover,
      number: 3,
    ),
    MyPukeCard(
      suit: suits.clover,
      number: 4,
    ),
    MyPukeCard(
      suit: suits.clover,
      number: 5,
    ),
    MyPukeCard(
      suit: suits.clover,
      number: 6,
    ),
    MyPukeCard(
      suit: suits.clover,
      number: 7,
    ),
    MyPukeCard(
      suit: suits.clover,
      number: 8,
    ),
    MyPukeCard(
      suit: suits.clover,
      number: 9,
    ),
    MyPukeCard(
      suit: suits.clover,
      number: 10,
    ),
    MyPukeCard(
      suit: suits.clover,
      number: 11,
    ),
    MyPukeCard(
      suit: suits.clover,
      number: 12,
    ),
    MyPukeCard(
      suit: suits.clover,
      number: 13,
    ),
  ];
}

class MyPukeCards extends StatefulWidget {
  MyPukeCards({Key? key}) : super(key: key);

  @override
  _MyPukeCardsState createState() => _MyPukeCardsState();
}

class _MyPukeCardsState extends State<MyPukeCards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150 + 25,
      child: Wrap(
        spacing: -60,
        alignment: WrapAlignment.center,
        children: renderHandCards(),
      ),
    );
  }
}
