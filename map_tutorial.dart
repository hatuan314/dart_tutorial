/*
    Khai báo và khởi tạo Map
 */
void initializeMap() {
  // Khởi tạo Map trống
  Map<String, int> map = {};

  // Khởi tạo Map với giá trị ban đầu
  Map<String, int> ages = {
    'John': 25,
    'Emma': 30,
    'Chris': 35,
  };

  Map<String, String> countries = Map();
  countries['VN'] = 'Vietnam';
  countries['US'] = 'United States';

  // Sử dụng Map.of hoặc Map.from
  Map<String, int> copiedMap = Map.of({'John': 25, 'Emma': 30});
  Map<String, int> anotherCopiedMap = Map.from({'Chris': 35});

  // Sử dụng Map.fromIterable
  List<String> names = ['John', 'Emma', 'Chris'];
  Map<String, int> nameLengths = Map.fromIterable(
    names,
    key: (item) => item,
    value: (item) => item.length,
  );

  print(nameLengths); // Output: {John: 4, Emma: 4, Chris: 5}
}

/*
    Các thao tác cơ bản trên Map
 */
void basicOperations() {
  // Truy cập phần tử
  Map<String, int> ages = {'John': 25, 'Emma': 30};
  print(ages['John']); // Output: 25

  // Thêm hoặc cập nhật phần tử
  ages['Chris'] = 35; // Thêm
  ages['John'] = 28;  // Cập nhật

  // Xóa phần tử
  ages.remove('Emma'); // Xóa phần tử có key 'Emma'
  print(ages); // Output: {John: 28, Chris: 35}

  // Kiểm tra sử tồn tại
  print(ages.containsKey('John')); // Output: true
  print(ages.containsValue(30));   // Output: false

  // Duyệt qua Map
  ages.forEach((key, value) {
    print('Key: $key, Value: $value');
  });


  for (var key in ages.keys) {
    print('Key: $key');
  }

  for (var value in ages.values) {
    print('Value: $value');
  }
}

/*
    Biến đổ giá trị trong Map
 */
void transformingValue() {
  Map<String, int> original = {'A': 1, 'B': 2, 'C': 3};
  Map<String, int> updated = original.map((key, value) => MapEntry(key, value * 2));

  print(updated); // Output: {A: 2, B: 4, C: 6}
}

/*
    Lọc phần tử trong Map
 */
void filterElements() {
  Map<String, int> scores = {'John': 85, 'Emma': 95, 'Chris': 65};
  Map<String, int> filtered = Map.fromEntries(
    scores.entries.where((entry) => entry.value >= 90),
  );

  print(filtered); // Output: {Emma: 95}
}

/*
    Đảo ngược Map (key thành value và ngược lại)
 */
void reverseKeyValue() {
  Map<String, int> original = {'A': 1, 'B': 2, 'C': 3};
  Map<int, String> reversed = original.map((key, value) => MapEntry(value, key));

  print(reversed); // Output: {1: A, 2: B, 3: C}
}

void main() {
  // Khai báo và khởi tạo Map
  initializeMap();

  // Các thao tác cơ bản trên Map
  basicOperations();

  // Biến đổ giá trị trong Map
  transformingValue();

  // Lọc phần tử trong Map
  filterElements();

  // Đảo ngược Map (key thành value và ngược lại)
  reverseKeyValue();
}