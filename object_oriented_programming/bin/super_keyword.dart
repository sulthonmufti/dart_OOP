//Parent Class
class Shape {
  int getCorner() {
    return 0;
  }
}

//Child Class
class Rectangle extends Shape {
  //overriding
  int getCorner() {
    return 4;
  }

  //use superkeyword
  int getParentCorner() {
    return super
        .getCorner(); //karena di sini pakai super. maka method getCorner() yang ini memanggil method di parent class nya.
  }
}

void main() {
  /**
   * SUPER KEYWORD
   * kadang kita mau mengakses method yang ada di class parent yang udah terlanjut kita override di clas child.
   * untuk bisa mengakses method di class parent, kita bisa gunain kata kunci 'super'.
   * intinya, 'super' digunain buat mengakses class parent nya.
   * ga cuman method, field punya parent class juga bisa kita akses pake kata kunci 'super'.
   */
  var shape = Shape();
  //ini akan memanggil method di parent class dengan return 0
  print(shape.getCorner());

  var rectangle = Rectangle();
  //ini akan memanggil method di child class dengan return 4
  print(rectangle.getCorner());

  var rectangelShape = Rectangle();
  //ini akan memanggil method di parent class dengan return 0
  print(rectangelShape.getParentCorner());
}
