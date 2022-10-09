class ProductOperations {
  List getList(Map productMap) {
    return productMap.values.toList();
  }

  String priceSum(List productList) {
    int result = productList.fold(0, (t, e) => t + int.parse(e['price']));
    return '${result}';
  }
}
