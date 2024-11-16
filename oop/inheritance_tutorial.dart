class Animal {
  void sound() {
    print("Animal makes a sound");
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print("Dog barks");
  }
}

void main() {
  Dog dog = Dog();
  dog.sound(); // Output: Dog barks
}
