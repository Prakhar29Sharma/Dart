int sumUpToFive(int a, [int? b, int? c, int? d, int? e]) {
  int sum = a;
  (b != null) ? sum += b : null;
  (c != null) ? sum += c : null;
  (d != null) ? sum += d : null;
  (e != null) ? sum += e : null;
  return sum;
}

void main() {
  print(sumUpToFive(23));
  print(sumUpToFive(23, 23));
  print(sumUpToFive(23, 34, 45, 2, 90));
  // print(sumUpToFive(23,23,43,23,12,24)); more than 5 arguements : Error!
}
