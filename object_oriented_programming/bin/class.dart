//ini class
class Person {
  /**
   * CLASS
   * untuk membuat class, kita bisa gunakan kata kunci class,
   * penamaan class biasanya menggunakan format PascalCase 
   */
}

//membuat class dengan field
class Orang {
  ///FIELD
  ///field/properties/attributes itu data yang bisa kita sisipin ke dalam sebuah object.
  ///tapi sebelum kita bisa masukin data di fields, kita harus deklarasiin dulu data apa aja yang dimiliki-
  ///object tersebut di dalam deklarasi class-nya.
  ///membuat field sama kaya buat variable, tapi ditempatkan di block class nya (jadi tidak bisa di luar kurung kurawal class nya).
  ///field itu wajib dimasukin nilainya. kecuali field nya nullable.
  String name = 'Guest'; //wajib
  String? address; //nullable
  final String country = "Indonesia"; //tidak bisa dirubah lagi datanya (final)
}

void main() {
  /**
   * MEMBUAT OBJECT
   * object adalah hasil dari instansiasi dari sebuah class.
   * untuk membuat object kita bisa menggunakan nama class lalu diikuti dengan kurung ().
   */
  var person1 = Person();
  //akan menampilkan hasil instansiasi atau objek dari class person
  print(person1);

  //penulisannya bisa gini juga
  Person person2 = Person();
  print(person2);

  /**
   * sebenernya ada cara yang lain lagi menggunakan new:
   * var = person1 = new Person();
   * tapi untuk versi dart yang baru ini sudah tidak direkomendasikan lagi (tidak perlu lagi).
   */

  /**
   * instalisasi class dengna field
   */
  var orang1 = Orang(); //variable = namaClass()
  print(orang1.name); //gunakan .namaField nya,  jadi variable.field
  print(orang1.address);
  print(orang1.country);

  print('==========');

  /**
   * MANIPULASI FIELD
   * field yang ada di object bisa kita manipulasi, tergantung final atau bukan.
   * kalau final, berarti data field nya tidak bisa kita ubah, tapi kalau tidak kita bisa ubah data field nya.
   * cara manupulasi data field sama kaya variable.
   * buat mengakses field kita butuh kunci .(titik) setelah nama object dan diikuti nama field nya.
   */
  orang1.name =
      'Muhammad Sulthon Mufti'; //note: kalau datanya fieldnya tidak boleh null, maka tidak bisa masukkan null pada saat manipulasi datanya.
  orang1.address = 'Central Java';
  //orang1.country = 'England'; //data tidak dapat dimanipulasi karena datanya bersifat final.
  print(orang1.name);
  print(orang1.address);
  print(orang1.country);
}
