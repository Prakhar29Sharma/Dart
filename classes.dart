class Book {
  // Initializing Member Variables to avoid null pointer exception
  String title = "";
  String author = "";
  int numOfPages = 0;

  Book(String aTitle, String aAuthor, int aNumOfPages) {
    title = aTitle;
    author = aAuthor;
    numOfPages = aNumOfPages;
  }

  void showDetails() {
    print("Book Title : ${title}, Book Author : ${author}, Number of Pages : ${numOfPages}");
  }
}

void main() {
  // Initializing by constructor
  Book hp = Book("ABC", "XYZ", 300);
  
  hp.showDetails();

  // modifying values
  hp.title = "Sorcerers Stone";
  hp.author = "JK Rowling";
  hp.numOfPages = 300;

  hp.showDetails();

}