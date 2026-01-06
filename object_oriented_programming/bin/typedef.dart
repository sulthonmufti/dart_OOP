//clas
class Sum {
  //field
  int first;
  int second;

  //constructor
  Sum(this.first, this.second);

  //callable class
  int call() => first + second;
}

//typedef, pemberian nama alias untuk class.
typedef Total = Sum;
typedef Jumlah = Sum;

//typedef untuk function
typedef Filter = String Function(String);

//function,
//inilah kenapa tidak direkomendasikan karena Filter pada function jadi ambigu atau susah dibaca,
// lebih baik di deklariskan si functionnya saja, jadi: void sayHello(String name, String Function(String) filter);
void sayHello(String name, Filter filter) {
  print('Hello ${filter(name)}');
}

void main() {
  /**
   * TYPEDEF
   * typedef = fitur dimana kita bisa buat alis untuk tipe data lainnya.
   * ini cocok kalo misal kita punya class yang namanya sama, jadi kita bisa gunain alias buat nama lain.
   * atau kita bisa persingkat nama class yang panjang pake alias.
   */

  // yang harusnya var sum = Sum(5, 6); jadi bisa pake var sum = Total(5, 6);
  var sum = Total(5, 6);
  print(sum());

  // yang harusnya var sum = Sum(5, 6); jadi bisa pake var jumlah = Jumlah(5, 6);
  var jumlah = Jumlah(3, 4);
  print(jumlah());

  print('===========');

  /**
   * TYPEDEF UNTUK FUNCTION
   * typedef juga ga cuman bisa dipake buat alias untuk class, tapi juga bisa dipake buat function.
   * tapi perlu diperhatiin, kalo sangat direkomendasiin tetep deklariin function pake deklarasi function nya, dibanding pake typedef.
   * detail: https://dart.dev/guides/language/effective-dart/design#prefer-inline-function-type-over-typedef
   */
  sayHello('Sulthon', (name) => name.toUpperCase());
}
