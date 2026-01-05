import 'dart:mirrors'; //untuk menggunakan MirrorSystem di noSuchMethod, detailnya ada di materi dart reflection

//class
class Repository {
  final String _name;

  Repository(this._name);

  @override
  //untuk noSuchMethod kita bisa tambahkan dynamid jadi: "dynamic noSuchMethod(Invocation invocation)", atau tidak juga tidak apa apa. tapi kalau dynamic jadi bisa return value apapun.
  //KETIKA KITA MEMANGGIL SEBUAH METHOD YANG TIDAK ADA DI class Repository, MAKA YANG AKAN DIPANGGIL ADALAH noSuchMethod INI
  dynamic noSuchMethod(Invocation invocation) {
    // TODO: implement noSuchMethod
    //di dalam noSuchMethod kan ada parameter invocation, kita bisa dapetin dari invocation kaya member name (invocation.name), named argumen, positional argumen dll.
    //misal kita mau dapetin nama kolom dari nama methodnya:
    var column = MirrorSystem.getName(invocation.memberName);
    var value = invocation.positionalArguments.first;
    var sql = "select * from $_name where $column = '$value'";
    print(sql);
  }
}

//==========================================

//NoSuchMethod Untuk Abstract Class
abstract class CategoryRepository {
  //method
  void id(String id);

  void name(String name);

  void quantity(int quantity);
}

class Category extends CategoryRepository {
  final String _name;

  Category(this._name);

  //karena kita melakukan override noSuchMethod, maka kita tidak perlu mengimplementasikan ulang method void id, name, dan quantity
  @override
  dynamic noSuchMethod(Invocation invocation) {
    var column = MirrorSystem.getName(invocation.memberName);
    var value = invocation.positionalArguments.first;
    var sql = "select * from $_name where $column = '$value'";
    print(sql);
  }
}

void main() {
  /**
   * NO SUCH METHOD
   * NoSuchMethod = method yang ada di class object yang bisa kita override untuk-
   * mendeteksi atau bereaksi saat sebuah method yang tidak ada itu dipanggil. 
   * NoSuchMethod cuman bisa dipake kalo tipe objectnya 'dynamic' atau 'abstract' class.
   * detailnya ada di:
   * https://api.dart.dev/stable/2.14.4/dart-code/Object/noSuchMethod.html
   * https://api.dart.dev/stable/2.14.4/dart-core/Invocation-class.html
   */

  //harus bikin dynamic (kalau engga error)
  dynamic repository = Repository("product");

  //langsung panggil repository, karena id tidak ada maka akan masuk/memanggil noSuchMethod nya, kemudian 'id' akan menjadi nama column nya, dan parameter "123" akan jadi parameter di noSuchMethod nya atau value dari sql nya.
  repository.id('123');

  repository.name('Laptop');
  repository.quantity(1000);

  print('==========');

  /**
   * NoSuchMethod UNTUK ABSTRACT CLASS
   * salah satu penggunaan NoSuchMethod yang biasanya digunain itu sebagai implementasi Abstract Class.
   * dengan pake NoSuchMethod, kita gausah mengimplementasiin method yang terdapat di abstract class lagi.
   */

  //kita tidak usah pakai dynamic lagi
  CategoryRepository repository2 = Category(
    "Electronic",
  ); //atau bisa kita tulis seperti biasa "var repository2 = Category("Electronic");"
  repository2.id('555');
  repository2.name('TV');
  repository2.quantity(14);
  //repository2.qwerty(10);  //akan error, karena tidak ada methodnya  di "abstract class CategoryRepository". kalau NoSuchMethod bukan abstract class bisa (seperti kasus class Repository)

  /**
   * NoSuchMethod UNTUK INTERFACE
   * selain Abstract Class, NoSuchMethod juga bisa digunain sebagai implemetnasi untuk interface.
   */
}
