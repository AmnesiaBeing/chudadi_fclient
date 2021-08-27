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
