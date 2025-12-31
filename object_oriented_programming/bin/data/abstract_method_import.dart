//absctract method
abstract class Animal {
  String? name;

  //abstract method
  void
  run(); //gaada block methodnya (body nya), tapi masih kita berikan parameter kalo emang perlu.
}

//class turunannya
class Cat extends Animal {
  @override //nulis @override itu optional, tapi disarankan tapi kalau tidak tetap bisa jalan.
  void run() {
    print('cat is running');
  }
}

void main() {
  /**
   * ABSTRACT METHOD
   * waktu kita bikin class abstract, kita bisa buat abstract method juga di dalamnya.
   * waktu kita buat abstract method, kita ga boleh membuat block method untuk method tersebut.
   * jadi, abstract method itu wajib di override di class turunannya (clss child).
   */
}
