//membuat exception, tanpa membuat class exception
class Validation {
  static void validate(String username, String password) {
    if (username == "") {
      throw Exception("Username is blank");
    } else if (password == "") {
      throw Exception("Password is blank");
    }
    //kondisi valid
  }
}

//membuat class exception sendiri
//tinggal kita tambahin "implements Exception", Exception di sini sebenernya gapunya method apapun, sebagai marker aja / penanda kalo ini exception
class ValidationException implements Exception {
  //field
  String message;

  //constructor
  ValidationException(this.message);
}

class Validation2 {
  static void validate2(String name, String pass) {
    if (name == "") {
      //di sini juga ga pake "throw Exception", tapi pake throw ValidationException atau class exception yang kita buat sendiri
      throw ValidationException("Name is blank");
    } else if (pass == "") {
      throw ValidationException("Pass is blank");
    }
  }
}

void main() {
  /**
   * EXCEPTION
   * waktu kita buat aplikasi, kita ga bakal terhindar sama yang namanya error.
   * error direpresentasikan sama istilah exception, dan semua direpresentasikan dalam bentuk class exception.
   * kita bia gunain class exception sendiri, atau gunain yang udah disediain.
   * untuk membuat sebuah exception, kita bisa gunain kata kuci 'throw', diikutin sama object exception nya.
   * detail: https://api.dart.dev/stable/1.14/dart-core/Exception-class.html
   */
  Validation.validate("", ""); //error, masuk ke exception

  print("====");
  /**
   * MEMBUAT CLASS EXCEPSION
   * selain menggunakan class Exception yang udah tersedia, kita juga bisa buat-
   * class Exception sendiri.
   * tidak ada kontrak dalam pembuatan class exception, kita bisa buat class biasa.
   * tapi sangat direkomendasikan kalo membuat class exception baru, kita lakuin implements-
   * ke class exception.
   */
  Validation2.validate2("", ""); //error dan program berhenti
  print(
    "program tidak berhenti",
  ); //perintah ini tidak akan dieksekusi karena program berhenti

  /**
   * TRY CATCH
   * waktu kita memanggil sebuah method yang bisa nyebabin exception, maka secara otomatis program akan berhenti.
   * kalo kita gamau program kita berenti, kita harus menangkap exception itu, dengan melakukan sesuatu waktu terjadi error.
   * untuk menangkap exception, kita bisa gunain try-catch.
   * cara gunain try-catch tinggal penggil method yang bisa nyebabin exception, trus di block catch kita bisa lakuin sesuatu-
   * kalo terjadi exception.
   */

  //sebelum manggil method yang berkemungkinan exception kita lakuin try dulu,
  try {
    Validation2.validate2("", "");

    //kalau terjadi exception (yang mana class nya ValidationException), maka kita mau lakuin apa (dalam kasus ini print pesan error)
  } on ValidationException {
    print("Validation error");
  }

  print("program tidak berhenti");
}
