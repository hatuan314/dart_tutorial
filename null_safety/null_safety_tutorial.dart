/*
    Kiem tra gia tri null
 */
void checkNullVariable(String? name) {
  if (name != null) {
    print(name.length);
  } else {
    print("name là null");
  }

  // Toan tu null-aware
  print(name?.length); // Output: null (không gây lỗi)

  // Toan tu mac dinh
  print(name ?? "Không có giá trị"); // Output: Không có giá trị

  // Toan tu null-assertion
  name = "Dart";
  print(name!.length); // Output: 4
}

/*
    Null Safety Colecttions
 */

void nullSafetyCollections() {
  List<String?> names = ['Alice', null, 'Charlie'];
  print(names); // Output: [Alice, null, Charlie]

  // List<String> names = ['Alice', 'Bob'];
  // names.add(null); // Lỗi: null không được phép
}

/*
    Ham nullable
 */
String? fetchName() {
  return null;
}

void main() {
  String? name;
  print(name);
  checkNullVariable(name);
  nullSafetyCollections();
  name = fetchName();
  print(name);
}