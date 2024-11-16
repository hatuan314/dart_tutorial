/*
    Gán hàm vào biến
 */
void sayHello() {
  print("Hello!");
}

/*
    Truyền hàm làm tham số
 */
void printMessage(String message) {
  print(message);
}

void executeFunction(void Function(String) func, String value) {
  func(value); // Gọi hàm được truyền vào
}

/*
    Trả về một hàm từ một hàm khác
 */
Function multiplyBy(int multiplier) {
  return (int value) => value * multiplier; // Trả về một hàm ẩn danh
}

/*
    Lưu trữ hàm trong List hoặc Map
 */
void add(int a, int b) => print("Sum: ${a + b}");
void subtract(int a, int b) => print("Difference: ${a - b}");

void main() {
  // Gán hàm vào biến
  var greet = sayHello; // Gán hàm sayHello vào biến greet
  greet(); // Gọi hàm qua biến

  // Truyền hàm làm tham số
  executeFunction(printMessage, "Hello from Dart!");

  // Trả về một hàm từ một hàm khác
  var multiplyByTwo = multiplyBy(2); // Trả về hàm nhân 2
  print(multiplyByTwo(5)); // Output: 10

  // Lưu trữ hàm trong List hoặc Map
  var operations = {
    'add': add,
    'subtract': subtract,
  };

  // Gọi hàm từ Map
  operations['add']!(5, 3); // Output: Sum: 8
  operations['subtract']!(5, 3); // Output: Difference: 2
}
