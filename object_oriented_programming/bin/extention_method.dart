//CLASS SAMA KAYA DI METHOD.DAR, DISINI KITA PAKAI UNTUK CLASS EXTENTION
class Person {
  //field
  String name = 'Mufti';
  String? address;
  String? nickname;
  final String country = 'indonesia';

  //method dalam class,
  void sayHello(String paraName) {
    print("Hello $paraName, you can call me $nickname");
  }

  void hi(String friend) {
    print('hi $friend');
  }

  String getName() {
    return "hello, my name is $name";
  }
}

//CLASS EXTENTION METHOD, note: kita bisa buat extention sebanyak-banyaknya
//Person di sini mengacu ke Class Person
extension GoodByeOnPerson on Person {
  void sayGoodBye(String paraName) {
    //$name di sini adalah field dari Class Person
    print('Good Bye $paraName, from $name');
  }
}

void main() {
  /**
   * EXTENTION METHOD
   * extention method = cara nambahin method terhadap class yang udah ada, tanpa harus mengubah class tersebut.
   * hal ini kadang berguna kalo misal Class nya itu Class milik library orang lain/bukan kita yang buat/punya kita tapi gamau diubah.
   * intinya: kalo mau nambahin method lagi tapi gamau ngubah isi Class yang udah ada, bikin aja Class Extention Method.
   */

  /**
   * MEMBUAT EXTENTION METHOD
   * cara buat extention method hampir mirip sama buat Class, tapi kita harus perlu gunain-
   * kata kunci extention diikutin nama extension lali diikutin kata kunci on dan sama Class-
   * yang mau kita tambahin extention method nya.
   */
  var person = Person();
  person.sayGoodBye('IniExtention');
}
