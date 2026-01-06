//class untuk callable
class Sum {
  //field
  int first;
  int second;

  //constructor
  Sum(this.first, this.second);

  //callable (bisa gini:)
  // int call() {
  //   return first + second;
  // }

  //coba-coba
  int call() {
    int hasil = first + second;
    print('hasil dari $first + $second adalah $hasil');
    return hasil;
  }
}

void main() {
  /**
   * CALLABLE CLASS
   * callable class adalah class yang bisa dipanggil seperti function.
   * untuk membuat Callable, kita perlu nambahin sebuah method bernama call() di class tersebut.
   * parameter dan return value dari method tersebut bisa disesuaiin sama kemauan kita.
   * setelah membuat object, kita bisa langsung penggil call() tersebut pake nama objectnya aja.
   */
  var sum = Sum(1, 2);
  sum(); //biasanya kan kalo kita panggil method (misal void tambah) akan ditulis sum.tambah(); tapi buat kasus callable ini lansung sum(); saja

  print(sum());
}
