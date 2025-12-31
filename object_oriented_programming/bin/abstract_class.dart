import 'data/abstract_class_import.dart';

void main() {
  /**
   * ABSTRACT CLASS
   * waktu kita bikin class, kita bisa jadiin class itu abstract class.
   * abstract class itu adalah class yang ga bisa di instansiasi (dibuat objectnya-
   * secara langsung), cuma bisa diturunin ke class lain.
   * jadi abstract class itu biasanya dipake sebagai template atau blueprint buat class turunannya.
   * untuk bikin abstract class, kita bisa pake kata kunci 'abstract' sebelum kata kunci 'class'.
   * dengan begitu abstract class bisa kita gunain sebagai template buat class turunannya (class child).
   */
  var city = City('Yogyakarta');
  //var location = Location; // Error: soalnya abstract class ga bisa di instansiasi secara langsung.

  print(city.name);
}
