//enum
enum CustomerLevel { regular, premium, vip }

//class
class Customer {
  String name;
  CustomerLevel level;

  Customer(this.name, this.level);
}

void main() {
  /**
   * ENUM
   * enum = fitur untuk membuat tipe data yang udah jelas nilainya (contoh: jenis kelamin, level data dll).
   * untuk membuat enum, kita bisa gunain kata kunci enum.
   */
  var customer = Customer('Mufti', CustomerLevel.vip);
  print(customer.name);
  print(customer.level);

  //untuk mengambil semua value dari enum nya
  print(CustomerLevel.values);
}
