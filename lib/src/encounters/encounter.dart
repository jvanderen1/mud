import 'dart:math';

import 'bear.dart';
import 'angel.dart';
import 'drunken_sailor.dart';
import 'ghost.dart';
import 'goblin.dart';
import 'vampire.dart';

abstract class Encounter {

  int damage_value = 0;
  Encounter.object();

  factory Encounter({int number: 7, int damage_value: 3}) {

    Random _rng = new Random();
    int value = _rng.nextInt(number);

    switch(value) {
      case 1:
        return new Bear();
      case 2:
        return new Angel();
      case 3:
        return new DrunkenSailer();
      case 4:
        return new Ghost();
      case 5:
        return new Goblin(damage_value);
      case 6:
        return new Vampire();
      default:
        return null;
    }
  }

  whenEncounter();
}
