/*
    Number
 */
void numberTutorial() {
  int a = 10;
  double b = 5.5;
  print(a + b);  // Cộng
  print(a - b);  // Trừ
  print(a * b);  // Nhân
  print(a / b);  // Chia (kết quả là double)
  print(a ~/ b); // Chia lấy nguyên
}

/*
    String
 */
void stringsTutorial() {
  String ten = 'Ngọc Ánh';
  String loiChao = "Xin chào!";

  String loiChaoDayDu = loiChao + ' Tôi là ' + ten;
  print(loiChaoDayDu); // Output: Xin chào! Tôi là Ngọc Ánh

  double diemTrungBinh = 8.5;
  print('Tên tôi là $ten và điểm trung bình của tôi là $diemTrungBinh');

}

/*
    boolean
 */
void booleanTutorial() {
  bool isStudent = true;
  bool hasGraduated = false;
}

/*
    dynamic
 */
void dynamicTutorial() {
  dynamic data = 'Hello';
  print(data);       // Output: Hello

  data = 123;        // Thay đổi giá trị sang kiểu int
  print(data);       // Output: 123
}

/*
    Null Safety
 */
void nullSafetyTutorial() {
  String? ten;
  ten = null;  // Không báo lỗi vì đã khai báo có thể null
  print(ten);  // Output: null
}

void main() {
  numberTutorial();
  stringsTutorial();
  booleanTutorial();
  dynamicTutorial();
}