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

//METHOD UNTUK TYPE CHECK AND CASTS
void typeCheck(Employee employee) {
  if (employee is VicePresident) {
    VicePresident vicePresident = employee as VicePresident;
    print('Hello Vice President ${vicePresident.name}');
  } else if (employee is Manager) {
    Manager manager = employee as Manager;
    print('Hello Manager ${manager.name}');
  } else {
    print('Hello ${employee.name}');
  }
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

  print('===========');

  /**
   * TYPE CHECK AND CASTS
   * saat menggunkan polimorfisme, kadang kita mau melakukan konversi tipe data ke tipe data aslinya
   * tapi supaya aman, sebelum ngelakuin konversi, pastiin kalo kita ngelakuin type check (pengecekan tipe data), dengan menggunakan kata kunci is.
   * hasil operator is adalah boolean, true jika tipe data sesuai, false jika tidak sesuai.
   * untuk melakukan konversi tipe data Object, kita bisa gunain kata kunci 'as'
   */
  typeCheck(employee);
}
