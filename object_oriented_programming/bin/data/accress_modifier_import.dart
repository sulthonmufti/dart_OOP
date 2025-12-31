class Product {
  //field public
  String? id;
  String? name;
  int? _quantity; //field private

  int? getQuantity() {
    return _quantity;
  }
}

void main() {
  /**
   * ACCESS MODIFIER
   * secara default, waktu kita bikin field atau method dalam class, maka semua-
   * field dan method itu bisa diakses dari mana saja (public).
   * tapi kadang kita pengen batasin atau nyembunyiin akses ke field atau method tertentu.
   * untuk nyembunyiin akses field atau methhod, kita bisa gunain _ (uderscore) di awal field atau method nya.
   * jadi secara otomatis field atau method itu jadi private, dan cuma bisa diakses dari dalam class itu sendiri (tidak bisa diakses di luat file).
   */

  var product = Product();
  product.id = '09';
  product.name = "computer";
  product._quantity = 100; // ini ga error karena masih di dalam file yang sama.

  print(product.getQuantity());
  print(product._quantity);
}
