import 'data/category.dart';

void main() {
  /**
    * IMPORT
    * Import adalah kemampuan untuk menggunakan class, function, atau variable yang berada di file yang berbeda.
    * Import sangat cocok digunain kalo kode program kita udah banyak dan ditempatin di banyak file.
    */
  var category = Category('1', 'Laptop');
  print(category.name);

  print(category.id);

  print('Name: ${category.name}, ID: ${category.id}');
}
