//parent class
class Person {
  String name = 'First Person';

  void sayHello(String name) {
    print('Hello $name, my name is ${this.name}');
  }
}

//child class
class OtherPerson extends Person {
  String name = 'Other Person';
}

void main() {
  /**
   * FIELD OVERRIDING
   * Field Overriding = kemampuan mendeklarasiin ulang field ci child class yang udah ada di parent class nya/
   * saat kita ngelakuin proses overriding, secara otomatis ketika kita membuat object dari class child nya, field yang di class parent tidak bisa diakses lagi.
   * saat melakukan field overriding kita harus pastiin deklarasi field nya harus sama dengan parent class nya.
   * intinnya, mirip kaya method overriding bedanya ini field aja.
   */
  var person = Person();
  print(person.name);
  person.name = 'Mufti';
  print(person.name);

  print('===========');

  var other = OtherPerson();
  print(other.name);
  other.name = 'Second Person';
  print(other.name);
}
