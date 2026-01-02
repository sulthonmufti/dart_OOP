//contoh class dengan encapsulation menggunakan getter dan setter
class Rectangle {
  int _width = 0;
  int _length = 0;

  //getter untuk mendapatkan width
  int get width {
    return _width;
  }

  //setter untuk mengubah width
  set width(int value) {
    _width = value;
  }

  //getter untuk mendapatkan length
  int get length {
    return _length;
  }

  //setter untuk mengubah length
  set length(int value) {
    _length = value;
  }
}

//---------------------------------

//penggunaan Getter dan Setter menggunakan expression body
class Triangle {
  int _base = 0;
  int _height = 0;

  int get base => _base;
  set base(int value) => _base = value;

  int get height => _height;
  set height(int value) => _height = value;
}

//---------------------------------

//pengguan Getter dan Setter yang bagus (disarankan), tidak cumanredirect data ke field tapi ada validation di Setter nya.
class RectangleWithValidation {
  int _width2 = 0;
  int _length2 = 0;

  int get width2 => _width2;
  set width2(int value) {
    if (value >= 1) {
      _width2 = value;
    } else {
      print('value must be at least 1');
    }
  }

  int get length2 => _length2;
  set length2(int value) {
    if (value >= 1) {
      _length2 = value;
    } else {
      print('value must be at least 1');
    }
  }
}

void main() {
  /**
   * ENCAPSULATION WITH GETTER AND SETTER
   * Encapsulation = memastikan data sensitif sebuah object tersembunyi dari akses luar.
   * hal ini bertujuan supaya kita bisa menjaga data sebuah object tetap baik dan valid.
   * untuk mencapai ini, kita biasanya buat semua field yang ga diakses dari luar.
   * biar bisa diubah, kita akan menyediakan method buat ngubah dan dapetin field tersebut.
   */

  /**
   * GETTER AND SETTER
   * proses encapsulation udah dibuat standarisasinya, dimana kita bisa gunain Getter dan Setter method.
   * Getter = fungsi buat ngambil data field.
   * Setter = fungsi buat ngubah data field.
   * untuk Getter, kita bisa gunain kata kunci get.
   * untuk Setter, kita bisa gunain kata kunci set.
   */

  var rectangle = Rectangle();
  rectangle.width = 100;
  print(rectangle.width);

  rectangle.length = 200;
  print(rectangle.length);

  //Expression Body
  //jika Setter dan Setter yang kita buat isinya cuman ngambil dan ngubah field, disaranin buat gunain Expression body.
  //cara buat expression body mirip kaya anonymous function, yaitu pake tanda panah (=>).
  var triangle = Triangle();
  triangle.base = 50;
  print(triangle.base);

  triangle.height = 75;
  print(triangle.height);

  /**
   * GETTER DAN SETTER YANG TIDAK PERLU
   * kalau di bahasa pemgrograman lain kaya Java / C#, penggunaan Getter dan Setter udah jadi sesuatu yang lumrah,
   * ini karena mengakses field dan method sangatlah berbeda oleh karena ini dari awal selalu dibuat Getter dan Setter.
   * tapi di Dart, hal ini ga berlaku, kalo isi Getter dan Setter nya cuma melakukan redirect data ke Field, disaranin buat ga perlu gunain-
   * Getter dan Setter, langsung aja gunain field.
   * hal ini karena di Dart, jika kedepannya kita mau nambahin Getter dan Setter, kita bisa tambahin, tanpa harus ngubah kode client nya.
   * https://dart-lang.github.io/linter/unnecessary_getters_setters.html
   * 
   * contoh:
   * 
   * GOOD :
   * class Box{
   *    var content;
   * }
   * 
   * BAD :
   * class Box{
   *    var _contents;
   *    get contents => _contents;
   *    set contents(value){
   *        _contents = value;}
   *    }
   */
  var rentangleWithValidation = RectangleWithValidation();
  rentangleWithValidation.width2 = 10;
  print(rentangleWithValidation.width2);

  rentangleWithValidation.length2 = -5;
  print(rentangleWithValidation.length2);
}
