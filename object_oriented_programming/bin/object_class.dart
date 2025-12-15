class Person {}

void main() {
  /**
   * OBJECT CLASS
   * setiap class yang kita buat secara otomatis adalah turunan dari Class Object, kecuali null.
   * walaupun secara ga langsung kita eksplisit nyebutin extends Object, tapi secara otomatis akan ngebuat class kita extends.
   * bisa dibilang kalo Class Object itu superclass buat semua class.
   * buat lebih detailnya bisa cek: https://api.dart/stable/2.44/dart-core/Object-class.html.
   */

  //penggunaan Clas Object Method
  //misal di sini kita buat object bisa tidak ada clas nya. tapi di sini kita ada/menggunakan method .toString();
  //.toString() ini punya atau bawaan dari si object. jadi semua tipe data di Dart itu semuanya adalah object sebenernya, jadi ada representasi class nya.
  var number = 100;
  print(number.toString());

  var person = Person();
  print(person.toString());
}
