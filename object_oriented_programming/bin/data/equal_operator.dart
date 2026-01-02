class Category2 {
  //field tidak wajib kita tulis String id = ""; karena akan otomatis kita isikan di constructornya.
  String id;
  String name;

  //constructor
  Category2(this.id, this.name);

  //override equal operator
  @override
  bool operator ==(Object other) {
    if (other is Category2) {
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
}
