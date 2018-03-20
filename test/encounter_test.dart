import "package:test/test.dart";
import "../lib/mud.dart";

main() {
  Encounter encounter;
  group("encounter tests", () {
    setUp(() {
      encounter = new Encounter(number: 7, damage_value: 3);
    });

    test("test encounter sentence bigger then 5", () {
      expect(encounter == null || encounter.whenEncounter().length > 5, true);
    });

    test("test encounter damage bigger then zero", () {
      expect(encounter == null || encounter.damage_value >= 0, true);
    });

    tearDown(() {
      encounter = null;
    });

  });
}