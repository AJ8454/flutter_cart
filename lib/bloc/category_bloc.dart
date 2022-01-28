import 'dart:async';

import 'package:flutter_cart/models/category_model.dart';
import 'package:flutter_cart/widgets/bloc_provider.dart';

class CategoriesBloc implements BlocBase {
  List<Category>? _categories;

  StreamController<List<Category>> categoriesController =
      StreamController<List<Category>>();
  Sink<List<Category>> get _inCategories => categoriesController.sink;
  Stream<List<Category>> get outCategories => categoriesController.stream;

  @override
  void dispose() {
    categoriesController.close();
  }
}
