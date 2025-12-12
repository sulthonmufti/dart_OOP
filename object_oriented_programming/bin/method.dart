//membuat class
class Person {
  //field
  String name = 'Mufti';
  String? address;
  String? nickname;
  final String country = 'indonesia';

  //method dalam class,
  //note method dalam class otomatis bisa mengekses field yang berada paad block class yang sama.
  void sayHello(String paraName) {
    print("Hello $paraName, you can call me $nickname");
  }

  //bisa nambahin banyak method dalam class yang sama
  void hi(String friend) {
    print('hi $friend');
  }

  //bisa menggunakan method yang memiliki return value juga
  String getName() {
    return "hello, my name is $name";
  }
}

void main() {
  /**
   * METHOD
   * selain nambahin field, kita juga bisa nambahin method ke object.
   * method = function yang terdapat di dalam class.
   * cara mendeklarasikan method adalah tinggal menambahkan function nya di dalam block class.
   * sama kaya function biasa, kita bisa nambahin return value, parameter di method yang ada di dalam block class.
   * buat ngakses method nya, kita bisa gunain titik (.) dan diikutin sama nama method nya. sama kaya field.
   */

  //panggil method
  var person = Person();
  person.nickname = 'Mizu';
  person.sayHello('Sulthon');

  person.hi('bro!');
  person.getName();
}
