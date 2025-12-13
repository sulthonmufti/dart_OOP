//class untuk Cascade Notation
class User {
  //field
  String? usename;
  String? name;
  String? email;
}

//function untuk Cascade Notation NULLABLE
User? creatUser() {
  return null;
}

void main() {
  /**
   * CASCADE NOTATION
   * Cascade notation = operator yang bisa digunain buat ngaasih beberapa operasi pada object yang sama.
   * ada 2 jenis Cascade Notation, .. (titik titik) dan ?.. (tnda tanya titik titik).
   * .. digunain buat object yang non-nullable, kalo ?.. buat object yang nullable.
   */

  //kalau TANPA CASCADE NOTATION
  var user = User();
  user.usename = "Sulthon";
  user.name = "Mufti";
  user.email = "abc@gmail.com";

  print('===========');

  //kalau PAKAI CASCADE NOTATION
  var user2 = User()
    ..usename = "Sulthon"
    ..name = "Mufti"
    ..email = "abc@gmail.com";

  print('===========');

  //cascade NULLABLE
  User? user3 = creatUser()
    ?..usename = 'Muhammad'
    ..name = "Sulthon"
    ..email = 'aaa@gmail.com';
}
