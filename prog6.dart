var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
};

bool isNoble(int atomicNumber) {
  return nobleGases[atomicNumber] != null;
}

// for functions that contains just one expression, we can shorthand syntax
bool _isNoble(int an) => nobleGases[an] != null;

void main() {
  // maps

  print(nobleGases);

  var gifts = Map<String, String>();
  gifts['first'] = 'party';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';
  print(gifts);


  print(isNoble(11));
  print(_isNoble(10));

}