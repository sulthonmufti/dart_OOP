//import untuk class Category (contoh equal salah)
import 'data/category.dart';

//import untuk class Category (contoh equal benar)
import 'data/equal_operator.dart';

void main() {
  /**
   * EQUAL OPERATOR
   * buat bandingin dua buah objecct apakah sama atau engga, biasanya kita pake operator '=='.
   * secara default, operator '==' itu milik class object, implementasinya jika kita gunain operator '==' milik class object-
   * adalah akan melakukan pengecekan kesamaan object dari lokasi di memory.
   * kadang-kadang, kita mau mengimplementasiin logika buat bandingin object berdasarkan data yang ada di dalam object tersebut.
   * untuk ngelakuin itu, kita bisa meng-override operator '==' yang ada di class object.
   */

  //EQUAL YANG SALAH (import 'data/category.dart';)
  var category1 = Category("1", 'Laptop');
  var category2 = Category("1", 'Laptop');
  print(category1 == category2); //false karena membandingkan lokasi di memory

  //EQUAL YANG BENAR (import 'data/equal_operator.dart';)
  var categoryy = Category2("1", 'Laptop');
  var categoryyy = Category2("1", 'Laptop');
  print(
    categoryy == categoryyy,
  ); //true karena membandingkan data di dalam object
}
