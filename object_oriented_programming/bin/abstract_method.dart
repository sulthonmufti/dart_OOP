import 'data/abstract_method_import.dart';

void main() {
  /**
   * ABSTRACT METHOD
   * waktu kita bikin class abstract, kita bisa buat abstract method juga di dalamnya.
   * waktu kita buat abstract method, kita ga boleh membuat block method untuk method tersebut.
   * jadi, abstract method itu wajib di override di class turunannya (clss child).
   */

  var cat = Cat();
  cat.name = 'Kuceng oren';
  cat.run();
  print('ini ${cat.name}');
}
