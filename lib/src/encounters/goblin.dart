import 'encounter.dart';

class Goblin extends Encounter {

  Goblin(damage_value) : super.object() {
    this.damage_value = damage_value;
  }

  whenEncounter() => "A small tiny green creator is coming your way, it "
      "appears to be a goblin ...";
}