//membuat mixin pertama
mixin Playable {
  //field
  String? name;

  //method
  void play() {
    print('playing $name');
  }
}

//membuat mixin kedua
mixin Stopable {
  //field
  String? name;

  //method
  void stop() {
    print('$name stopped');
  }
}

//class yang menggunakan mixin
//jadi semua yang ada di mixin Playable dan Stopable itu dimasukkin ke class Video dan Audio.
class Video with Playable, Stopable {}

class Audio with Playable, Stopable {}

//MEMBATASI MIXIN
//misal kita buat abstract class dulu
abstract class Multimedia {}

//class turunan dari Multimedia
class ChildMultimedia extends Multimedia with Song {}

//membuat mixin yang dibatasi hanya "untuk class turunan Multimedia
mixin Song on Multimedia {
  //field
  String? name;

  //method
  void playSong() {
    print('Play $name');
  }
}

void main() {
  /**
   * MIXIN
   * Mixin = reusable code yang bisa digunain di class lain tanpa harus terkendala sama pewarisan.
   * Mixin mirip kaya ngelakuin copy paste code di beberapa tempat. tapi pake cara yang lebih baik.
   * denga mixin, kiga bisa membuat code yang sama pada beberapa class.
   * satu class bisa nembahin lebih sari satu mixin, sama kaya inteface.
   * cara membuat mixin, kita bisa pake kata kunci 'mixin'.
   * untuk menggunakan mixin, kita bisa gunain kata kunci 'with' diikutin sama mixin nya.
   */
  var video = Video();
  video.name = "Dart Mixin";
  print('${video.name}');

  video.play();
  video.stop();

  print('===========');

  /**
   * MEMBATASI MIXIN
   * secara default,  semua clas bisa gunain mixin yang kita buat.
   * tapi jika ingin membatasi class turunan tertentu, kita bisa tambahkan kata kunci 'on', diikutin-
   * dengan class yang kita batasi pada mixin nya.
   */
  var child = ChildMultimedia();
  child.name = "Dart Song";
  print('${child.name}');
}
