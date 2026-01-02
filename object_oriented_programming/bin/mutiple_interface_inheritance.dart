//class untuk multiple interface inheritance pertama
//kalau mau buat interface, disarankan buat abstract class
abstract class Car {
  String name = "";

  //method abstract
  void drive();

  //method abstract
  int getTier() {
    return 0;
  }
}

//class interface kedua
abstract class HasBrand {
  //method abstract
  String getBrand();
}

//class multiple interface inheritance
class Avanza implements Car, HasBrand {
  @override
  String name = "Avanza";

  @override
  String getBrand() => 'Toyota';

  @override
  void drive() {
    print('$name is driving');
  }

  @override
  int getTier() {
    return 4;
  }
}

void main() {
  /**
   * MULTIPLE INTERFACE INHERITANCE
   * hal yang bedain waktu kita melakukan pewarisan, kita hanya bisa melakukan extends terdapap satu class,
   * tapi kita bisa melakukan implements terhadap beberapa class.
   * ini karena sebenernya tuh implements ga melakukan pewarisan, tapi mendeklarasikan ulang seluruh method dan field nya.
   * anggep aja ini kaya ngebuat class yang beda, tapi punya field sama method yang sama.
   * untuk membuat multiple implements, kita bisa gunain pemisah tanda koma antar class yang kita implements.
   */
  var avanza = Avanza();
  avanza.drive();
  print(avanza.getBrand());
}
