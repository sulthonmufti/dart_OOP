//a class with overridden hashCode
class Category {
  //field
  String id;
  String name;

  //constructor
  Category(this.id, this.name);

  //override equal operator
  @override
  bool operator ==(Object other) {
    if (other is Category) {
      if (id != other.id) {
        return false;
      } else if (name != other.name) {
        return false;
      } else {
        return true;
      }
    } else {
      return false;
    }
  }

  //overriding hashCode method
  @override
  int get hashCode {
    var result = id.hashCode; //mengambil hashCode dari field id
    result += name.hashCode; //menambahkan hashCode dari field name
    return result;
  }
}

void main() {
  /**
   * HASHCODE GETTER
   * HashCode Getter = representasi integer object kita, mirip kaya toString yang merupakan-
   * representasi String, hashCode itu representasi integer.
   * HashCode itu unik untuk setiap object, jadi ga akan ada dua object yang punya hashCode sama.
   * HashCode sangat bermanfaat untuk buat struktur data unique, kaya HashMap, HashSet dll, soalnya-
   *  cukup gunain HashCode method buat dapetin identitas unique object kita.
   * secara default, hashCode itu bakal ngembaliin nilai integer sesuai data di memory, tapi kita bisa-
   * meng-override nya kalau kita mau.
   */

  /**
   * KONTRAK HASHCODE METHOD
   * ga mudah meng-override method hashCode, soalnya ada kontraknya:
   * 1. Sebanyak apapun hasCode dipanggil, untuk object yang saa harus hasilin data integer yang sama.
   * 2. kalau ada 2 object yang sama jika dibandingin pake method equals (==), maka nilai hashCode nya juga harus sama.
   */

  var category1 = Category("1", "Electronics");
  var category2 = Category("1", "Electronics");

  print(category1 == category2); //true karena isinya sama
  print(category1 == category2);

  print(category1.hashCode); //hashCode nya sama karena isinya sama
  print(category2.hashCode);

  print('===========');

  var category4 = Category("1", "Electronics");
  var category5 = Category("2", "TV");

  print(category4 == category5); //false karena isi nya berbeda
  print(category4 == category5);

  print(category4.hashCode); //hashCode nya beda karena isinya berbeda
  print(category5.hashCode);
}
