import "dart:math";
import "dart:io";

String prompt(String promptText) {
  print("${promptText} : ");
  String? answer = stdin.readLineSync();
  return answer!;
}

void main() {
  String color = prompt("Enter a color");
  print("the color is ${color}.");
}
