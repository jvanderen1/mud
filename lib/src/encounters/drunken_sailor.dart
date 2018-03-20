import 'encounter.dart';

class DrunkenSailer extends Encounter {

  DrunkenSailer() : super.object();

  whenEncounter() {
    return "How how, dr ... whobli, ship a hoi' says a drunken sailer.";
  }

  int get damage_value => 0;
}