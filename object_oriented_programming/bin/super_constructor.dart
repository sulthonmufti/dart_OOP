//parent class
class Manager {
  //field
  String? name;

  //constructor
  //ini bisa ditulis Manager(this.name); untuk initializing formal.
  Manager(String name) {
    this.name = name;
  }
}

//child class
class VicePresident extends Manager {
  //melakukan redirecting name yang ada di parent class
  VicePresident(String name) : super(name) {
    //biasanya kita kalau redirecting  constructor yang di dalam class yang sama kita  pakenya 'this' kan, jadi VicePresident(String name) : this.name; karna ini beda clas kita pake 'super'.
    //NOTE, kalau kita redirec pake this. kan kita gabisa pake body {}, tapi kalai kita pake 'super' bisa pake body{} di constructor nya.
    //NOTE, kalai misal parent class itu punya constructor yang ada parameternya, dalam kasus ini Manager(String name) {, kita wajib panggil parameternya dalam kasus ini (VicePresident(String name) : super(name))
    print('Create new VicePresident');
  }
}

void main() {
  /**
   * SUPER CONSTRUCTOR
   * ga cuman buat mengakses method atau field yang ada di parent class, kata kunci 'super'-
   * juga bisa dipake buat mengakses constructor.
   * tapi syaratnnya untuk mengakses parent class constructor, kita harus mengaksesnya di dalam-
   * class child constructor.
   * memanggil super constructor cuman bisa dilakuin dalam bentuk Redirecting Constructor.
   */
  var manager = Manager('Mufti');
  print(manager.name);

  var vice = VicePresident('Sulthon');
  print(vice.name);
}
