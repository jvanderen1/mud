import 'encounter.dart';

class Angel extends Encounter {

  Angel() : super.object();

  whenEncounter() => "Wow, you encountered an angel, this will give you strength and healing possibilities";

  int  get damage_value => -8;
}