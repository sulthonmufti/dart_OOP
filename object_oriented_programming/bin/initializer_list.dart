//class untuk initializer list
class Customer {
  //field
  String firstName = '';
  String lastName = '';
  String fullName = '';

  //misal kita ingin mengubah firstName dan lastName tapi kita ingin ekstrak dari fullName nya
  Customer(this.fullName)
    : firstName = fullName.split(
        " ",
      )[0], //fullName.split(" ")[0] maksudnya kita ambil data fullName trus kita potong pake spasi " " dan ambil data index ke-0 untuk kita jadikan firstName
      lastName = fullName.split(" ")[1] {
    //tidak kita masukkan ke dalam body{} karena firstName akan langsung memanggil di fieldnya, jadi tidak akan terhalang variable shadowing.
    //beda kalau kita taruh di dalam body constuctor {} maka akan berpotensi buat terjadi variable shadowing, itulah kenapa harus pake this.
    print('Create new Customer');
  }

  //contoh kalau kita masukkan ke dalam body {} (tidak menggunakan initializer list):
  // Customer(this.fullName) {
  //   firstName = this.fullName.split(" ")[0];
  //   lastName = this.fullName.split(" ")[1];
  //   print('Create new Customer');
  // }
}

void main() {
  /**
   * INITIALIZER LIST
   * saat kita membuat constructor atau named constructor, ada fitur yang namanya initializer list.
   * initializer list = tempat dimana kita bisa mengubah field pada object, sebelum block body construtor.
   * hal ini menjadi lebih mudah dibandingkan mengubah field di dalam block constructor.
   * initinya, biar tidak terhalangi variable shadowing (dan ga pake this.)
   */
  var myName = Customer("Muhammad Sulthon Mufti");
  print(myName.firstName);
  print(myName.lastName);
  print(myName.fullName);
}
