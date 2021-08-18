import 'package:chudadi_fclient/avatar.dart';
import 'package:chudadi_fclient/my_puke_cards.dart';
import 'package:chudadi_fclient/puke_cards.dart';
import 'package:chudadi_fclient/remain_card_number.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChuDaDi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[900],
      body: Center(
        child: Stack(children: [
          // 自己方面
          Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: Column(
                children: [PukeCards(), SizedBox(height: 20), MyPukeCards()],
              )),
          Positioned(
              left: 30,
              bottom: 0,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Avatar(), RemainCardNumber()],
              )),
          // 上家
          Align(
              alignment: Alignment.centerLeft,
              child: Wrap(
                children: [
                  Avatar(),
                  RemainCardNumber(),
                  SizedBox(width: 20),
                  PukeCards()
                ],
              )),
          // 下家
          Align(
              alignment: Alignment.centerRight,
              child: Wrap(
                children: [
                  PukeCards(),
                  SizedBox(width: 20),
                  RemainCardNumber(),
                  Avatar()
                ],
              )),
          // 对家
          Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Wrap(
                    children: [Avatar(), RemainCardNumber()],
                  ),
                  SizedBox(height: 20),
                  PukeCards()
                ],
              )),
        ]),
      ),
    );
  }
}
