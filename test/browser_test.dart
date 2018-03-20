import "package:test/test.dart";
import "dart:html";

void main() {
  group("browser tests", () {
    test("queryselector the value", () {
      var textEl = querySelector("#text");
      expect(textEl.innerHtml, "awesome");
    });
  });
}