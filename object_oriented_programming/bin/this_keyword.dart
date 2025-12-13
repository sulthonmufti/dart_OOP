//membuat class untuk this keyword, class nya sama kaya veriable_shadowing.dart
class Person {
  int angka = 1;
  String name =
      "Guest"; //variable ini tidak dapat diakses lagi karena nama avriable nya sama kaya nama parameter constructor nya.
  String? address;
  final String country = "Indonesia";

  //constuctur
  Person(int nomor, String name, String address) {
    angka =
        nomor; //karena ini nama field dan parameternya udah beda jadi gausah pake this gapapa.
    this.name =
        name; //karena pakai this. maka this.name di sini mengacu ke name pada field
    this.address =
        address; //karena pakai this. maka this.address di sini mengacu ke name pada field
  }
}

void main() {
  /**
   * THIS KEYWORD
   * waktu kita buat kode di dalam block constructor atau method di dalam class-
   * kita bisa gunain kata kunci 'this' untuk mengakses object saat ini.
   * misal kita butuh mengakses sebuah field yang namanya sama dengan parameter method,-
   * hal ini tidak bisa dilakukan kalo langsung nyebutin nama field nya,-
   * kita bisa mengakses nama field itu dengan kata kunci 'this'.
   * this ga cuman digunain untuk mengakses field miliki objek saat ini, tapi juga-
   * bisa digunain buat mengakses method.
   * THIS BISA DIGUNAIN UNTUK MENGATASI MASALAH VARIABLE SHADOWING.
   */
  var person = Person(8, "Sulthon", "Central Java");
  print(person.angka);
  print(person.name);
  print(person.address);
}
