//class
class Sample {
  //tambahkan  @override sebagai penanda biar waktu baca kode tau kalau ini lagi overriding method
  @override
  String toString() {
    return "Sample";
  }

  //pake @Deprecated("") buat jadi penanda kalo misal ini udah ga digunain lagi
  @Deprecated("Don't use it anymore")
  void doNotCallMe() {}
}

//membuat annotation
class Todo {
  //field
  final String todo;

  //constant constructor
  const Todo(this.todo);
}

class ApplicationLogic {
  @Todo("Will be implemented in the next feature")
  void run() {}
}

void main() {
  /**
   * METADATA
   * metadata = fitur yang digunain untuk nambahin informasi tambahan pada kode program-
   * yang kita buat.
   * untuk nambahin informasi tambahan ke dalam kode program kita, kita bisa gunain-
   * anotation yang dimulai dengan karekter @ lalu diikutin dengan 'constant' atau-
   * memanggil 'constant constructor'.
   * 
   *  STANDARD ANNOTATION
   *  Annotation          Keterangan
   *  @Deprecated         Menandai bahwa kode tersebut sudah tidak direkomendasikan digunakan
   *  @override           Menandai bahwa field atau method tersebut merupakan overriding dari parent nya
   */

  /**
   * MEMBUAT ANOTATION
   * membuat annotation sangat mudah, kita bisa membuat constant atau bisa membuat Class-
   * dengan menggunakan Constant Constructor
   */

  /**
   * MANFAAT METADATA
   * sekarang, metadata mungkin tidak terlihat begitu berguna.
   * tapi waktu udah pelajarin tentang Reflection, kita bisa tahu manfaat yang bisa kita dapetin waktu gunain metadata
   */
}
