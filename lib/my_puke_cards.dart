// 手牌栏

import 'package:chudadi_fclient/my_puke_card.dart';
import 'package:flutter/material.dart';

List<Widget> renderHandCards() {
  return [
    MyPukeCard(suit: suits.clover, number: 2),
    MyPukeCard(suit: suits.clover, number: 4),
    MyPukeCard(suit: suits.clover, number: 13),
    MyPukeCard(suit: suits.clover, number: 4),
    MyPukeCard(suit: suits.clover, number: 8),
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
    return Wrap(
      spacing: -60,
      alignment: WrapAlignment.center,
      children: renderHandCards(),
    );
  }
}
