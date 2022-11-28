

void main() {
  // sets
  var halogens = {
    'fluorine',
    'chlorine',
    'bromine',
    'iodine',
    'astanine'
  };

  print(halogens);

  var cars = <String>{};

  cars.add('volvo');
  cars.add('alto');
  cars.add('celerio');
  cars.add('swift');

  print(cars);

  var someMoreCars = <String> {'mahindra', 'porshe', 'dzire'};

  cars.addAll(someMoreCars);

  print(cars);

  cars.remove('mahindra');

  print(cars);

}