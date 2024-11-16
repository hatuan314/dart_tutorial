enum Weather {
  sunny("Trời nắng"),
  rainy("Trời mưa"),
  cloudy("Trời nhiều mây"),
  windy("Trời nhiều gió");

  final String description;

  // Constructor
  const Weather(this.description);

  void printDescription() {
    print(description);
  }
}

void useEnums() {
  Weather currentWeather = Weather.sunny;

  if (currentWeather == Weather.sunny) {
    print("Hôm nay trời nắng!");
  } else {
    print("Trời không nắng.");
  }
}

void propertiesAndMethods() {
  // Lấy danh sách tất cả các giá trị trong Enum
  print(Weather
      .values); // Output: [Weather.sunny, Weather.rainy, Weather.cloudy, Weather.windy]

  // Lấy giá trị của từng hằng số trong Enum
  for (var weather in Weather.values) {
    print("Weather: $weather, Index: ${weather.index}");
  }

  // Truy cập một giá trị cụ thể qua chỉ số
  print(Weather.values[1]); // Output: Weather.rainy
}

void enumsInSwitchCase() {
  Weather currentWeather = Weather.sunny;
  switch (currentWeather) {
    case Weather.sunny:
      print("Trời nắng!");
      break;
    case Weather.rainy:
      print("Trời mưa!");
      break;
    case Weather.cloudy:
      print("Trời nhiều mây!");
      break;
    case Weather.windy:
      print("Trời nhiều gió!");
      break;
  }
}

void assignableValues() {
  Weather currentWeather = Weather.sunny;
  // Truy cập thuộc tính
  print(currentWeather.description); // Output: Trời nắng

  // Gọi phương thức
  currentWeather.printDescription(); // Output: Trời nắng
}

void main() {
  useEnums();
  propertiesAndMethods();
  enumsInSwitchCase();
  assignableValues();
}
