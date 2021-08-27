// 手牌栏

import 'package:chudadi_fclient/puke_card.dart';
import 'package:chudadi_fclient/card_model.dart';
import 'package:flutter/material.dart';

List<Widget> renderCards() {
  return [
    PukeCard(suit: suits.clover, number: 2),
    PukeCard(suit: suits.clover, number: 4),
    PukeCard(suit: suits.clover, number: 13),
    PukeCard(suit: suits.clover, number: 4),
    PukeCard(suit: suits.clover, number: 8),
  ];
}

class PukeCards extends StatefulWidget {
  PukeCards({Key? key}) : super(key: key);

  @override
  _PukeCardsState createState() => _PukeCardsState();
}

class _PukeCardsState extends State<PukeCards> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: -48,
      alignment: WrapAlignment.center,
      children: renderCards(),
    );
  }
}
