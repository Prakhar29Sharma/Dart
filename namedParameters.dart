void printName(String firstName, String lastName, [String? middleName]) {
  print("$firstName ${middleName ?? ''} $lastName");
}

void main() {
  printName("Prakhar", "Sharma");
  printName("Prakhar", "Sharma", "Amit");
}
