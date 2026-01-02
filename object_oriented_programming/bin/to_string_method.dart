//class untuk nge-override toString() method
class Product {
  //field
  String? id;
  String? name;
  int? _quantity;

  //constructor
  int? _getQuantity() {
    return _quantity;
  }

  //ini adalah toString() method yang di override
  @override
  String toString() {
    return "Product{id: $id, name: $name, quantity: $_quantity}";
  }
}

void main() {
  /**
   * TO STRONG METHOD
   * sebelumnya kita udah bahas bahwa parent class untuk semua class kecuali null adalah object.
   * di dalam object, ada method bernama toString(), method ini merupakan method buat-
   * representasi String dari object tertentu.
   * contohnya, waktu kita gunain function print(object), sebenernya yang kita panggil tuh-
   * print(object.toString()).
   * kita bisa meng-override method toString() kalo mau mengimplementasiin representasi data String-
   * class yang kita buat.
   */
  var product = Product();
  product.id = '1';
  product.name = 'Laptop';

  print(product.toString());
  print(product);
}
