//membuat operator
class Orange {
  int quantity = 0;

  //biasanya kan kita bikin:
  // Orange add(Orange other) {
  //   var result = Orange();
  //   result.quantity = quantity + other.quantity;
  //   return result;
  // }

  //kalau pake operator:

  //kita bikin operator tambah(+)
  //sebenernya bikin operator sama kaya bikin method biasa, ada return valuenya (Orange), bedanya diikutin kata kunci 'operator' (Orange operator),
  // diikutin operatornya, dan parameternya
  Orange operator +(Orange jeruk) {
    var result = Orange();
    result.quantity = quantity + jeruk.quantity;
    return result;
  }
}

void main() {
  /**
   * OPERATOR
   * operator adalah method dengan nama yang spesial.
   * dart ngebolehin kita membuat method dengan nama operator
   * Daftar Operator yang diperbolehkan untuk kita buat method operator di dalam Dart:
   *    <      +      |      >>
   *    >      /      ^      []
   *    <=     ~|     &      []=
   *    >=     *      <<      ~
   *    -      %      >>      == 
   */

  /**
   * MEMBUAT OPERATOR
   * untuk membuat operator, kita bisa seperti membuat method,
   * tapi nama method nya diganti jadi kata kunci operator diikutin dengan operatornya.
   */

  //menggunakan operator
  var orange1 = Orange();
  orange1.quantity = 10;

  var orange2 = Orange();
  orange2.quantity = 10;

  var orange3 = orange1 + orange2;
  print(orange3.quantity);
}
