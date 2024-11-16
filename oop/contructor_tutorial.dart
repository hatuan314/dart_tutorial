class Person {
  late String name;
  late int age;

  // Constructor
  Person(String name, int age) {
    this.name = name;
    this.age = age;
  }

  // Constructor rút gọn
  // Person(this.name, this.age);

  void introduce() {
    print("Xin chào, tôi là $name và tôi $age tuổi.");
  }
}

class Rectangle {
  double _width;
  double _height;

  Rectangle(this._width, this._height);

  // Getter
  double get area => _width * _height;

  // Setter
  set width(double value) {
    _width = value;
  }

  set height(double value) {
    _height = value;
  }
}

void main() {
  Person person1 = Person("Ngọc", 25);
  person1.introduce(); // Output: Xin chào, tôi là Ngọc và tôi 25 tuổi.

  Rectangle rect = Rectangle(10, 5);
  print("Diện tích: ${rect.area}"); // Output: Diện tích: 50
  rect.width = 7;
  print("Diện tích sau khi đổi chiều rộng: ${rect.area}"); // Output: Diện tích: 35
}
