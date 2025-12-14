//class untuk overriding (PARENT CLASS)
class Manager {
  String? name;

  void sayHello(String name) {
    print('Hello $name, my name is Manager ${this.name}');
  }
}

//CHILD CLASS untuk overriding
class VicePrecident extends Manager {
  //OVERRIDING (mendeklarasikan ulang) method yang ada di Parent Class
  void sayHello(String name) {
    print('Hello $name, my name is VP ${this.name}');
  }
}

//CHILD CLASS 2untuk overriding
class CLever extends Manager {
  //OVERRIDING (mendeklarasikan ulang) method yang ada di Parent Class
  void sayHello(String name) {
    print('Hello $name, my name is CL ${this.name}');
  }
}

void main() {
  /**
   * METHOD OVERRIDING
   * method overrinding = kemampuan mendeklarasikan ualng method di child class yang udah ada di parent class.
   * saat kita ngejalanin proses overriding, secara otomatis ketika kita membuat object dari class child, method yang di class parent tidak dapat diakses lagi (mirip variable shadowing).
   * intinya, kita bikin method yang sama kaya di parent nya, otomatis kalau kita panggil itu yang dipanggil child nya bukan parent nya.
   * saat kita melakukan method overriding, pastiin deklarasi method nya harus sama dengan di parent nya (return value, nama method, parameter dll).
   */
  var manager = Manager();
  manager.name = 'Sulthon';
  manager.sayHello('Mufti'); //method ini akan memanggil parent class nya

  var vp = VicePrecident();
  vp.name = "saya VP";
  vp.sayHello(
    'VP',
  ); //method ini akan memanggil child class nya karena udah di overriding
}
