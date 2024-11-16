class Person {
  late String name;
  late int age;

  // Phương thức
  void introduce() {
    print("Xin chào, tôi là $name và tôi $age tuổi.");
  }
}

void main() {
  Person person1 = Person();
  person1.name = "Ngọc";
  person1.age = 25;
  person1.introduce(); // Output: Xin chào, tôi là Ngọc và tôi 25 tuổi.
}
