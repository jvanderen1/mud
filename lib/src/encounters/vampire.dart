import 'encounter.dart';
import 'random_damage.dart';
import 'say_something.dart';

class Vampire extends Encounter with RandomDamage, SaySomething {

  Vampire() : super.object();

  whenEncounter() => "A vampire is flying by! ${sentence()}";
}