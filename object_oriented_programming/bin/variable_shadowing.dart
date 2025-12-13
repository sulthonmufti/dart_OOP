//sebuah class, variable shadowing
class Person {
  int angka = 1;
  String name =
      "Guest"; //variable ini tidak dapat diakses lagi karena nama avriable nya sama kaya nama parameter constructor nya.
  String? address;
  final String country = "Indonesia";

  //constuctur
  Person(int nomor, String name, String address) {
    angka = nomor; //ini kalau namanya beda, bisa diakses/manipulasi
    name =
        name; //field name tidak berubah, karena nama parameter sama dengan nama field nya. otomatis yang akan diakses adalah name yang ada di dalam parameter contructor nya.
    address =
        address; //field address tidak berubah, karena nama parameter sama dengan nama field nya
  }
}

void main() {
  /**
   * VARIABLE SHADOWING
   * variable shadowing itu suatu kejadian waktu kita bikin nama variable-
   * dengan nama yang sama, dan ternyasa di scope di atasnya itu ada juga variable-
   * dengan nama yang sama. alhasil variable tersebut akan nutupin variable di atasnya.
   * ini biasanya terjadi waktu kita buat parameter di method yang sama dengan nama field di class (secara otomatis-
   * perameter tersebut akan menutupi field di atasnya).
   * jadi saat terjadi variable shadowing, maka secara otomatis-
   * variable di scope di atasnya tidak bisa diakses (HATI-HATI).
   */
  //var person = Person("Sulthon", "Central Java");
  var person = Person(9, "Sulthon", "Central Java");
  print(person.angka);
  print(
    person.name,
  ); //name disini akan tetap mengacu pada field, bukan constructor. karena name pada constructor itu tidak mengakses field karena namanya sama.
  print(person.address);
}
