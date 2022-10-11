class ProductOperations {
  static List getList(Map productMap) {
    return productMap.values.toList();
  }

  static int priceSum(List productList) {
    int result = productList.fold(0, (t, e) => t + int.parse(e['price']));
    return result;
  }

/*
  static List getProdCardList(Map productMap) {
    List temp = [];
    getList(productMap)
        .forEach((e) => temp.add({e['title'], e['image'], e['price']}));
    return temp;
  }
  */
}
