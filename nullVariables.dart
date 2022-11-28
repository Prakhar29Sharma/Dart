void main() {
  //int a = null; <- INVALID in null-safe Dart
  int? a = null; // valid in null safe dart
  int? b;

  a ??= 4; // value 4 will be assigned to 'a' only when 'a' is null

  print(a);

  //a ??= 5; // still the value of a will be 4 because value of 'a' is not null
  // the above syntax will create a warning while running if value of a is not null

  print(a);

  print(b); // null

  //print(1 ?? 3); // prints 1

  print(null ?? 4); // prints 4

}
