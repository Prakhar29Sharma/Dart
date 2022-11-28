import 'dart:io';

void printInteger(int value) {

  print("$value");

}

void main() {
  // Static Binding
  int num = 5;
  // Dynamic Binding
  var number = 4; 
  // print number
  printInteger(number);

}

