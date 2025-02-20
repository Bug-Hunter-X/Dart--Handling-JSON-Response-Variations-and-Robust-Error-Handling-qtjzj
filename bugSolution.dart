```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      if (data is List) {
        for (var item in data) {
          if(item is Map<String, dynamic>) {
            print(item['name'] ?? 'Name not found');
          } else {
            print('Invalid data format in list');
          }
        }
      } else if (data is Map<String, dynamic>) {
        print(data['name'] ?? 'Name not found');
      } else {
        print('Invalid JSON response format');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```