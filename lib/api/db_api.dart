import 'package:flutter_cart/models/category_model.dart';

class DBApi {
  List<Category>? getCategory() {
    List<Category> tempList = [
      Category(),
      Category(),
      Category(),
      Category(),
      Category(),
      Category(),
      Category()
    ];
    return tempList;
  }
}
