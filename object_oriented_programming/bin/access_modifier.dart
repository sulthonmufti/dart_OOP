import 'data/accress_modifier_import.dart';

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
  //product._quantity = 100; // Error: karena field _quantity itu private, jadi ga bisa diakses di luar class Product (di luar file).
}
