//class untuk factory constructor
class Database {
  //Default Constructor
  Database() {
    print('Create new Database');
  }

  //misal kita buat static/variable yang global (ada materi tersendiri), tipe nya Database,
  //nama variablenya database, lalu isinya Database()
  static Database database = Database();

  //factory constructor
  //ini seperti named costructor, bedanya ini factory jadi return value nya bisa kita buat sesuai yang kita mau.
  //saat kita buat factory Database.get() maka kita akan mengambalikan data database (static Database database = Database();),
  //artinya kalau kita membuat Database.get() berkali kali, kita akan mengambalikan data yang sama terus.
  factory Database.get() {
    return database; //kalau buat factory harus ada return nya
  }
}

void main() {
  /**
   * FACTORY CONSTRUCTOR
   * factor constructor = fitur dimana kita bisa buat constructor untuk membuat object baru-
   * namun logika cara pembuatan object barunya bisa kita sesuaikan dengan yang kita mau.
   * misal kita mau ngembaliin object yang sama berkali-kali, kita bisa pake factory constructor.
   * untuk buat factory constructor ktai bisa pake kata kunci 'factory' sebelum pembuatan constructor nya.
   */
  var database1 = Database.get();
  var database2 =
      Database.get(); //walaupun kita bikin 2 tapi hasilnya cuman menjalankan 1 kali database();

  print(database1 == database2); //ini hasilnya 'true' karena object nya sama
}
