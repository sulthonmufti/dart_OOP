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

//class baru dengan METHOD EXPRESSION BODY
class ComputerClass {
  // biasanya kan gini:
  // void startup(){
  //   print("computer is starting");
  // }
  // bisa kita persingkat dengan jadi gini:
  void startup() => print("Computer is starting");

  void shutdown() => print('Computer is shutting down');

  //kalau method expression body dengan return value
  String getOperatingSystem() => "linux";
  //"linux" di sini adalah nilai return value nya.
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
  person.nickname = 'Mizu'; //akan memanipulasi data field nya.
  person.sayHello(
    'Sulthon',
  ); //akan dimasukkan dalam parameter method function nya.

  person.hi('bro!');
  person.getName(); //panggil doang

  print('===========');

  /**
   * METHOD EXPRESSION BODY
   * kadang kita pengen buat method cuma pake 1 baris code kan,
   * kita bisa pake expression body kalo mau bikin method yang sederhana.
   * expression body mirip kaya kita bikin anonymous function.
   */
  var computer = ComputerClass();
  computer.startup();
  computer.shutdown();
  print(computer.getOperatingSystem());
}
