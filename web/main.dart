import 'dart:html';
import 'package:mud/mud.dart';

Environment myEnvironment = new Environment("wood");

void main() {
  querySelector("#enter").onClick.listen(clickedOnEnter);
}

clickedOnEnter(e) {
  String outputHTML;
  InputElement input = querySelector("#commands");
  input.style.borderColor = "#55FF55";

  String output;
  switch (input.value) {
    case 'left':
      output = "You are going left now.";
      break;
    case 'right':
      output = "You are going right now.";
      break;
    case 'up':
      output = "You are going up now.";
      break;
    case 'down':
      output = "You are going down now.";
      break;
    default:
      output = "Use left, right, up, down, please . . .";
  }

  outputHTML = "<div>${output}</div>";
  querySelector("#output").appendHtml(outputHTML);

  String interaction = myEnvironment.stumbleUpon();
  outputHTML = "<div>${interaction}</div>";
  querySelector('#output').appendHtml(outputHTML);
}
