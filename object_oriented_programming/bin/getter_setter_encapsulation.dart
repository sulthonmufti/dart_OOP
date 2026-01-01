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
}
