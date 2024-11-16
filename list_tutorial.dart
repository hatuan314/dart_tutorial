/*
    Khai báo List
 */
void declaringList() {
  List<int> numbers = [1, 2, 3, 4, 5]; // Danh sách các số nguyên
  List<String> fruits = ['apple', 'banana', 'orange']; // Danh sách các chuỗi
  var mixedList = [1, 'hello', true]; // Chứa các phần tử với nhiều kiểu dữ liệu
}

/*
    Danh sách có thể thay đổi kích thước
 */
void growableList() {
  List<int> numbers = [1, 2, 3];
  numbers.add(4); // Thêm phần tử
  print(numbers); // Output: [1, 2, 3, 4]

  numbers.remove(2); // Xóa phần tử có giá trị là 2
  print(numbers); // Output: [1, 3, 4]
}

/*
    Danh sách có độ dài cố định
 */
void fixedLengthList() {
  List<int> fixedList = List.filled(3, 0); // Danh sách có 3 phần tử, mỗi phần tử có giá trị là 0
  fixedList[0] = 5;
  print(fixedList); // Output: [5, 0, 0]
}

/*
    Truy cập phần tử trong List
 */
void getElementList() {
  List<String> fruits = ['apple', 'banana', 'orange'];
  print(fruits[0]); // Output: apple
  print(fruits[2]); // Output: orange
}

/*
     Duyệt qua các phần tử trong List
 */
void iterateElementList() {
  List<String> fruits = ['apple', 'banana', 'orange'];
  // for
  for (int i = 0; i < fruits.length; i++) {
    print(fruits[i]);
  }

  // for - in
  for (var fruit in fruits) {
    print(fruit);
  }

  // forEach
  fruits.forEach((fruit) {
    print(fruit);
  });
}

void main() {
  // Khai báo List
  declaringList();

  // Danh sách có thể thay đổi kích thước
  growableList();

  // Danh sách có độ dài cố định
  fixedLengthList();

  // Truy cập phần tử trong List
  getElementList();

  // Duyệt qua các phần tử trong List
  iterateElementList();
}