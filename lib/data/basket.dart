class Basket {
  List _products = [];
  List get getProducts => _products;
  void addProduct(item) => _products.add(item);
  void popProduct(String name) => _products.forEach((element) {
        if (element['title'] == name) {
          _products.remove(element);
        }
      });
}
