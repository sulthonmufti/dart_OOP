//class untuk static
class Application {
  //static field, dengan final/data yang gabisa diubah lagi (fix)
  static final String author = "Muhammad Sulthon Mufti";
  static final String name = "Belajar Pemrograman Dart";
}

void main() {
  /**
   * static = sebuah kata kunci yang digunain untuk membuat field dan method yang bisa-
   * diakses tanpa harus buat object nya.
   * waktu kita buat field atau method yang static, artinya dia secara otomatis bisa diakses-
   * sama object manapun, jadi perlu hati-hati kalo mau buat field/method static.
   * field / method statis bisa diakses sama method yang ga static.
   * tapi field/method static ga bisa mengakses field/method yang ga static.
   * biasanya static digunain untuk membuat utility.
   * untuk mengakses static field/method, kita bisa langsung gunain nama Class diikutin-
   * dengan titik stan static field/method nya.
   */

  //karena field dari class Application sudah dibuat static-
  //jadi kita gausah bikin object nya dulu, bisa langsung dipanggil,
  //biasanya kan harus (contoh) "var aplication = Application;" dulu, kalo ini engga
  print(Application.name);
  print(Application.author);
}
