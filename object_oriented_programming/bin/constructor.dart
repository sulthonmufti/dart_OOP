//buat class untuk cunstructor
class Person {
  String name = 'Guest';
  String? address;
  final String country = "Indonesia";

  //MEMBUAT CONSTRUCTOR
  Person(String paraName, String paraAddress) {
    name = paraName;
    address = paraAddress;
  } //karena kita nambahin 2 parameter, maka saat kita buat object personnya kita wajib nambahin/mengirimkan 2 parameter tersebut.
  //NOTE:
  //parameter di constructor bisa juga nullable, default dll.
  //CONSTRUCTOR DI DART CUMAN BISA 1
}

void main() {
  /**
   * CONSTRUCTOR
   * waktu kita buat object, kita kaya memanggil sebuah method, karena kita pake '()',
   * di dalam class kita bisa membuat sebuah constructor,
   * contructor = method yang akan dipanggil saat pertama kali objek dibuat.
   * mirip kaya method, kita bisa tambahin parameter di constructor,
   * bedanya kita gausan nentuin return value nya, dan ga perlu mengembalikan value nya. karena default nya kita akan membuat object nya.
   * nama constructor harus sama dengan nama Class nya, dan ga butuh kata kunci void atau return value.
   * saat kita nambahin Constructor di Class, waktu membuat object baru kita wajib mengikuti parameter yang ada di constructor.
   */

  //menggunkaan constructor
  //var person = Person(); //ERROR, kalau hanya Person(); saja error karena sudah ada contructor sehingga kita wajib mengisikan beberapa parameter yang sudah ditentukan di parameter Person(String paraName, String paraAddress).
  var person = Person('Mufti', 'Central Java');
  print(person.name);
  print(person.address);
  print(person.country);
}
