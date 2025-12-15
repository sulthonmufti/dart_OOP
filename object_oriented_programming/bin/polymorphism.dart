//parent class
class Employee {
  //field
  String? name;
  //constructor
  Employee(this.name);
}

//class turunan class employee
class Manager extends Employee {
  Manager(String name) : super(name);
}

//class turunan class manager
class VicePresident extends Manager {
  VicePresident(String name) : super(name);
}

//METHOD UNTUK POLYMORPHISM
void sayHello(Employee employee) {
  print('Hello ${employee.name}');
}

void main() {
  /**
   * POLYMORPHISM
   * Pholymorphism tuh artinya 'banyak bentuk'.
   * dalam OOP, Polymotphism itu kemampuan sebuah object berbah bentuk menjadi bentuk lain.
   * Polyphorism erat hubungannya dengan Inheritance (perwarisan).
   */

  //pertama kita bikin variable tipe datanya Employee, dan dibikin object Employee namanya 'Mufti,
  //variable employee kan datanya Employee, tapi karena Employee ini punya banyak turunan (Manager dan VicePresident), kita bisa mengubah-
  //variable employee walaupun tipenya Employee menjadi data turunannya (berubah bentuk), misal employee = Manager("Mufti"), karena Manager itu turunan dari Employee.
  Employee employee = Employee('Mufti');
  print(employee);

  employee = Manager('Mufti');
  print(employee);

  employee = VicePresident('Mufti');
  print(employee);

  print('===========');

  //METHOD POLYMORPHISM
  //contoh yang sering digunakan pada polymorphism itu pada sebuah method.
  sayHello(Employee('Mufti'));
  sayHello(Manager('Mufti'));
  sayHello(VicePresident('Mufti'));
}
