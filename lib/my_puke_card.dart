import 'package:flutter/material.dart';

import 'package:chudadi_fclient/card_model.dart';

class MyPukeCard extends StatefulWidget {
  final suits suit;
  final int number;

  const MyPukeCard({required this.suit, required this.number});

  @override
  _MyPukeCardState createState() => _MyPukeCardState();
}

class _MyPukeCardState extends State<MyPukeCard> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: selected ? null : EdgeInsets.only(top: 25),
      decoration: BoxDecoration(
        border: Border.all(
            width: 1, color: Colors.black38, style: BorderStyle.solid),
        borderRadius: BorderRadius.all(Radius.circular(8)),
        color: Colors.white,
      ),
      height: 150,
      width: 100,
      child: InkWell(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Container(
          child: Stack(
            children: [
              Positioned(
                  left: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: Column(
                      children: [
                        Text(
                          number2string(this.widget.number),
                          style: TextStyle(fontSize: 30),
                        ),
                        Text(
                          suits_char[this.widget.suit.index],
                          style: TextStyle(
                              fontSize: 30,
                              color: suits_color[this.widget.suit.index]),
                        )
                      ],
                    ),
                  )),
              Positioned(
                  right: 0,
                  bottom: 0,
                  child: Text(
                    suits_char[this.widget.suit.index],
                    style: TextStyle(fontSize: 70),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
