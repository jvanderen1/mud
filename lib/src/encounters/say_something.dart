import 'dart:math';

class SaySomething {
  final int NUM_WORDS = 5;
  final int NUM_SENTS = 20;
  final String SPACE = " ";
  final String PERIOD = ".";

  static Random r = new Random();

  String sentence() {
    List<String> article = ["the", "a", "one", "some", "any"];
    List<String> noun = ["creature", "villian", "creep", "encounter", "car"];
    List<String> verb = ["drove", "jumped", "ran", "walked", "skipped"];
    List<String> preposition = ["to", "from", "over", "under", "on"];

    String sentence;
    for (int i = 0; i < NUM_SENTS; i++) {
      sentence = article[rand()];
      var c = sentence[0];
      sentence = sentence.replaceAll(c, c.toUpperCase());
      sentence += SPACE + noun[rand()] + SPACE;
      sentence += (verb[rand()] + SPACE + preposition[rand()]);
      sentence += (SPACE + article[rand()] + SPACE + noun[rand()]);
      sentence += PERIOD;
    }
    return "It says: '$sentence'";
  }

  int rand() {
    int ri = r.nextInt(5) % NUM_WORDS;
    if (ri < 0) {
      ri += NUM_WORDS;
    }
    return ri;
  }
}