//Class Parent
class Manager {
  //field
  String? name;

  //method
  void sayHello(String name) {
    print('Hello $name, my name is ${this.name}');
  }
}

//Class Child
class vicePresident extends Manager {
  String? gender;
}

void main() {
  /**
   * INHERITANCE (PEWARISAN)
   * Inheritance = pewarisan untuk menurunkan class ke class lainnya.
   * intinya, kita bisa buat class Parent dan class Child nya.
   * Class Child cuma bisa punya 1 Class Parent, tapi 1 Class Parent bisa punya banyak Class Child.
   * saat sebuah class diturunkan, maka semua field dan method pada class parent akan otomatis dimiliki oleh class child nya.
   * untuk melakukan pewarisan, kita bisa gunain kata kunci 'extents' lalu diikutin nama class parent nya.
   */
  var manager = Manager();
  manager.name = 'Mufti';

  manager.sayHello('Sulthon');

  var vp = vicePresident();
  vp.name = 'Makoto';
  vp.sayHello('Shina');
  vp.gender = 'Man';
  print('${vp.name}\'s gender is ${vp.gender}');
}
