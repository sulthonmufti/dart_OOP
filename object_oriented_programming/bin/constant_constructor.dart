//class untuk constant constructor
class ImmutablePoint {
  //field
  final int x; //final, data pasti dan tidak bisa diubah lagi
  final int y;

  //constant constructor
  //tambahkan 'const' untuk memberi tahu kalau constructor ini bersifat constant.
  //saat membuat constant contructor, pastikan bahwa fieldnya 'final'
  const ImmutablePoint(this.x, this.y);
}

void main() {
  /**
   * CONSTANT CONSTRUCTOR
   * saat kita buat Class yang ga pernah berubah datanya (immutable data), sebaiknya kita buat Constructor nya dalam bentuk Constant.
   * untuk membuat Constant Constructor kita bisa gunain kata kunci const.
   * keuntungan saat pake Constant Constructor tuh saat kita buat constant object, secara otomatis object yang sama akan digunain.
   * jadi waktu kita buat constant object dengan parameter yang sama maka dia akan gunain object yang sama terus, jadi gaakan dibuat-
   * berkali kali sama dart nya (cukup sekali dan akan di sharing ke semuanya, karena aman untuk di sharing karena tidak dapat diubah datanya).
   */

  //disini kita membuat object nya
  //untuk membuat object nya kita perlu menggunakan kata kunci 'const objectnya', kalau ga pake const maka malah akan membuat object yang baru lagi.
  var point1 = const ImmutablePoint(1, 2);
  var point2 = const ImmutablePoint(1, 2);

  print(point1 == point2); //ini hasilnya 'true'

  //ini bedanya kalau ga pake const (bukan constant)
  var point3 = ImmutablePoint(1, 2);
  var point4 = ImmutablePoint(1, 2);

  print(
    point3 == point4,
  ); //ini hasilnya 'false' karena ga pake const. artinya itu berbeda object nya (object baru). dua buah object yang berbeda
}
