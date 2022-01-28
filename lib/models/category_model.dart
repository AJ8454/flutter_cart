class Category {
  static const namekey = "name";
  String? id;
  String? name;

  Category() {
    name = 'motherboard';
  }

  Category.fromFirebase(Map<String?, dynamic> json) {
    name = json[namekey];
  }
}
