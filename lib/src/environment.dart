import 'encounters/encounter.dart';

class Environment {

  String _name;
  Encounter encounter;

  Environment(name) {
    this.name = name;
    this.encounter = new Encounter();
  }

  String stumbleUpon() {
    this.encounter = new Encounter();
    var done_damage = damage;
    String interaction = "${this._name} you stumbled upon something ${this.encounter?.whenEncounter()}";
    if (done_damage != null && done_damage > 0) {
      interaction = "${interaction} <br> You have ${done_damage} damage!";
    }
    return interaction;
  }

  get damage => encounter.damage_value;

  set name(name) {
    this._name = "[${name}]";
  }
}