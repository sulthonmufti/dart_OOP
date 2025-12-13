//class menggunakan INITIALIZING FORMAL PARAMETER
class Person {
  String name = "Guest";
  String? address;
  final String country = "Indonesia";

  //FYI. body {} Constructor itu optional, jadi kalau misal gaada isinya hapus saja {}.
  Person(this.name, this.address);
}

void main() {
  /**
   * INTIALIZING FORMAL PARAMETER
   * kadang kan kita waktu buat constructor, bisanya kita buat parameter yang hanya digunain untuk mengubah nilai yang ada di field.
   * untuk kasus ini, kita bisa gunain fitur Formal Parameter, dimana pada parameter-
   * kita bisa langsung sebutin filed mana yang akan diubah.
   * formal parameter hanya bisa dipake di Constructor, ga bisa digunain di method.
   * caranya kita cuman ubah parameternya pake this.namaField nya, tanpa perlu gunain tipe data. soalnya-
   * tipe datanya udah otomatis ngikutin yang ada di field.
   */
  var person = Person("Mufti", "Jawa Tengah");
  print(person.name);
  print(person.address);
}
