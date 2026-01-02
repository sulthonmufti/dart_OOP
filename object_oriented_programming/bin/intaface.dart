//class, misal kita mau gunain clas ini sebagai interface,
//kalau itu mau jadiin class ini sebagai interface, jadi class turunannya nanti harus implement ulang semua method yang ada di class ini, name, drive, getTIer dll.
class Car {
  //field
  String name = "";

  //method
  void drive() {}

  //method
  int getTier() {
    return 0;
  }
}

//class turunannya, harus implement semua method yang ada di class Car
//kalau kita pake extends, itu artinya kita mewarisi class Car, bukan mengimplementasikan sebagai interface.
//kalau kita pake implements, itu artinya kita mengimplementasikan ulang semua method yang ada di class Car.
class Avanza implements Car {
  @override
  String name = "Avanza";

  @override
  void drive() {
    print('$name is driving');
  }

  @override
  int getTier() {
    return 4;
  }
} // kalau mau nambahin lebih dari 1 implement nya kita bisa tambahin lagi, contoh: class Avanza implements Car, Taxi, Bus{ ... }

void main() {
  /**
   * INTERFACE
   * sebelumnya kita udah bahas abstract class, dimana kita bisa gunain sebagai kontrak untuk class child nya.
   * tapi sebenernya yang lebih teppat buat kontrak adalah Interface.
   * Interface itu mirip kaya abstract class, tapi lebih ringan.
   * yang membedakan interface semua methodnya otomatis jadi abstract.
   * untuk mewariskan interface, kita ga gunain kata kunci extends, 'tapi implements'.
  */

  /**
   * PEMBUATAN INTERFACE
   * hal yang beda banget di Dart sama bahasa pemrograman lain kaya Java, PHP dll, itu waktu kita buat initerface.
   * Interface di Dart bisa diambil dari class apapun, waktu kita ngebuat class, secara otomatis class nya itu interface untuk class itu sendiri.
   * interface dari class tersebut, bisa kita gunain di class yang lain kalau mau.
   * maka secara otomatis, kita kudu mendeklarasiin semua method dan field yang ada di class tersebut, kerana kita ambil itu interfacenya, bukan class nya.
   * anggep aja interface itu kontrak dari pembuatan class.
   */
}
