import "dart:io";
import "dart:math";

int getInteger(String promptText) {
  print("prompt text : ${promptText}");
  return int.parse(stdin.readLineSync()!);
}

int signumFunction(int n) {
  if (n == 0) {
    return 0;
  } else if (n < 0) {
    return -1;
  } else {
    return 1;
  }
}

void main() {
  /*
  bool hungry = true;
  if (hungry) {
    print("Eats food!");
    hungry = false;
  } else {
    print("Walks Away!");
  }

  if (hungry) {
    print("Eats food!");
    hungry = false;
  } else {
    print("Walks Away!");
  }
  */

  int num = getInteger("Enter a Number : ");

  switch (signumFunction(num)) {
    case 1:
      print("Number is +ve");
      break;
    case -1:
      print("Number is -ve");
      break;
    case 0:
      print("Number is 0");
      break;
  }

}
