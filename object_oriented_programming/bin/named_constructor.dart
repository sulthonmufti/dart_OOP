//class dengan NAMED CONSTRUCTOR
class Person {
  //field
  String? name;
  String? address;
  String nickname = "Mizu";
  int number1 = 10;
  int? number2;
  final String country = "Japan";

  //a constructor
  Person(this.name, this.address);

  //named constructor
  Person.namedConstructor(this.number1);

  //named constructor2
  Person.anotherNamedConstructor(this.number2);

  //named constructor3
  Person.thirdNamedConstructor(this.name, this.nickname, this.address);

  //redirecting constructor
  Person.redirectingConstructor(String name) : this(name, "NO ADDRESS");
  //INTINYA, redirecting constructor ini menerima parameter (String name), dan juga melanjutkan ke constructor selanjutnya (this(name,"") yang diambil dari Default Constructor)

  //redirecting constructor2
  Person.secondRedirecting(String address) : this("NO NAME", address);

  //redirecting constructor ke named constructor
  Person.redirectingNamedConstructor(String name, String nickname)
    : this.thirdNamedConstructor(name, nickname, "NO ADDRESS");
}

void main() {
  /**
   * NAMED CONSTRUCTOR
   * Constructor kan hanya bisa diubat 1 aja,
   * tapi ada fitur Named Constructor, dimana Constructor dengan nama yang berbeda.
   * dengan pake Named Constructor, kita bisa buat Constructor lebih dari 1, tapi wajib menggunakan nama yang beda.
   * cara buatnya bisa gunain nama Class.namaConstrutor nya.
   * Named Constructor bisa lebih dari 1.
   */
  var myName = Person('Muhammad Sulthon Mufti', 'Hokkaido');
  print(myName.name);
  print(myName.address);

  print(myName.number1);
  print(myName.number2);

  print(myName.country);

  var myName2 = Person.namedConstructor(14);
  print(myName2.number1);

  var myName3 = Person.anotherNamedConstructor(20);
  print(myName3.number2);

  print("============");

  /**
   * REDIRECTING CONSTRUCTOR
   * waktu kita buat Named Constuctor, kita bisa memanggil Default Constructor, atau istilahnya adalah melakukan Redirecting Constructor.
   * cara membuat Redirecting Constructor adalah dengan menambahkan ':' titik dua, lalu diikuti-
   * dengan memanggil this(parameter), dimana this() di sini adalah dianggap mengakses Default Constructor.
   * saat membuat Redirecting Constructor, kiga tidak bisa menambahkan cody pada Redirecting Constructor.
   */
  var person = Person("Mufti", "Yokohama");
  print(person.name);
  print(person.address);

  var redirecting = Person.redirectingConstructor('Takahashi');
  print(redirecting.name);
  print(redirecting.address);

  var redirecting2 = Person.secondRedirecting("Shibuya");
  print(redirecting2.name);
  print(redirecting2.address);

  print("============");

  /**
   * REDIRECTING KE NAMED CONSTRUCTOR
   * redirecting juga bisa dilakukan ke Named Constructor, tidak hanya ke Default Constructor.
   * caranya kita ganti ketika memanggil this menjadi this.namedConstroctor().
   */
  var directingNamed = Person.redirectingNamedConstructor(
    'Muhammad Sulthon Mufti',
    'Mijuu',
  );
  print(directingNamed.name);
  print(directingNamed.nickname);
  print(directingNamed.address);
}
