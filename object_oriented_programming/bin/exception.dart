//membuat exception, tanpa membuat class exception
import 'dart:async';
import 'dart:ffi';

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

//multiple try catch
class LoginCheck implements Exception {
  //field
  String error;

  LoginCheck(this.error);
}

class ValidationLogin {
  static void valid(String usernameid, String passwordid) {
    if (usernameid == "") {
      throw LoginCheck("Username field is blank");
    } else if (passwordid == "") {
      throw LoginCheck("Password must be filled!");
    } else if (usernameid == "Mufti" || passwordid == "123") {
      throw LoginCheck("Login failed, try again!");
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

  print("==========");

  //kalau mau menangkap object exception nya
  // try {
  //   Validation2.validate2("", "");
  // } on ValidationException catch (exception) {
  //   print("Error : ${exception.message}");
  // }

  //bagaimana kalo kita manggil sebuah method yang berkemungkinan untuk multiple error,
  //kita bisa menggunakan multiple try catch
  try {
    ValidationLogin.valid("Mufti", "111");
  } on LoginCheck catch (exception) {
    print("Error : ${exception.error}"); //sampai sini sebenernya udah bisa-

    //tapi kalau kondisi di atas tidak tertangani tambahin lagi exception (handle semuanya)
  } on Exception catch (exception) {
    print("Error : ${exception.toString()}");
  }

  print("program tidak berhenti");

  print("==========");

  /**
   * FINALLY
   * dalam try-catch, kita bisa nambahin block finally
   * block finally ini adalah block dimana akan selalu dieksekusi baik terjadi exception atau engga.
   * ini sangat cocok wakti kita mau lakuin sesuatu, ga peduli sukses apa gagal.
   */
  try {
    ValidationLogin.valid("Mufti", "111");
  } on LoginCheck catch (exception) {
    print("Error : ${exception.error}"); //sampai sini sebenernya udah bisa-

    //tapi kalau kondisi di atas tidak tertangani tambahin lagi exception (handle semuanya)
  } on Exception catch (exception) {
    print("Error : ${exception.toString()}");
  } finally {
    print(
      "Program selesai",
    ); //finally ini entah bakal error (exception) apa engga, bakal tetap dieksekusi
  }

  print("==========");

  /**
   * TRY CATCH SEMUA EXCEPTION
   * kadang kita ga terlalu peduli sama jenis class Exception.
   * pada kasus kaya gini, kita bisa ga nyebutin class nya waktu melakukan try-catch
   */
  try {
    ValidationLogin.valid("Mufti", "111");
  } on LoginCheck catch (exception) {
    print("Error : ${exception.error}");

    //di sini kita gausah tambahin on Exceptio, lansung tangkap saja exceptionnya
  } catch (exception) {
    print("Error : ${exception.toString()}");
  } finally {
    print("Program selesai");
  }

  print("==========");

  /**
   * STACK TRACE
   * waktu kita menangkap exception, object exception ga punya informasi posisi atau lokasi-
   * terjadinya error.
   * jika kita mau tau posisi atau lokasi terjadinya error, kita bisa nambahin-
   * parameter kedua pada catch.
   * secara otimatis parameter kedau itu adalah sebuah object Stack Trace.
   * detail : https://api.dart.dev/stable/2.14.4/dart-core/StackTrace-class.html
   */
  try {
    ValidationLogin.valid("Mufti", "111");
  } on LoginCheck catch (exception, stackTrace) {
    print("Error : ${exception.error}");
    //akan keluat detail dari error exceptionnya (baris error dll)
    print("Stack Trace : ${stackTrace.toString()}");
  } catch (exception, stackTrace) {
    print("Error : ${exception.toString()}");
    print("Stack Trace : ${stackTrace.toString()}");
  } finally {
    print("Program selesai");
  }

  print("==========");

  /**
   * ERROR
   * selain exception, ada jenis kesalahan lagi yaitu Error.
   * berbeda sama exception, error adalah kesalahan yang harus dihindarin, dan-
   * jika terjadi lebih baik segera hentikan programnya.
   * error bisa terjadi karena ada kesalahan pada kode program kita.
   * contoh, kita mengakses index yang salah di List.
   * detail : https://api.dart.dev/stable/2.14.4/dart-core/Error-class.html
   */
  var list = ["Muhammad", "Sulthon", "Mufti"];

  //akan error, karena kita akses list[10] padahal cumana ada 3 data.
  //harusnya kita lakuin validasi dulu sebelum mengaksesnya.
  print(list[10]);
}
