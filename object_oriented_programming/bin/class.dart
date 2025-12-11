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
}
