//membuat abstract class
abstract class Location {
  //field
  String? name;

  //selain field, kita juga bisa bikin method, constructor, dan lain-lain di abstract class.
  //bedanya cuma gabisa dibikin object secara langsung, yang bisa cuma diturunannya saja.
}

//class turunannya, bisa dijadiin object
class City extends Location {
  //constructor
  City(String name) {
    this.name = name;
  }
}

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
}
