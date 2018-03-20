import 'dart:math';

class RandomDamage {

  Random _rng = new Random();

  int get damage_value => _rng.nextInt(5);
}