void main() {
  // Anonymous functions
  // lambda 
  /*
  ([[type] param1[, ...] ]) {
    code block;
  };
   */

  const list = ['apples', 'bananas', 'oranges'];

  list.map((item) {
    return item.toUpperCase();
  }).forEach((item) {
    print('$item: ${item.length}');
  });

}