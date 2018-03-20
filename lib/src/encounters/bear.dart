import 'encounter.dart';
import 'random_damage.dart';

class Bear extends Encounter with RandomDamage {

  Bear() : super.object();

  whenEncounter() => "Grr, growl, you encountered a bear!";
}