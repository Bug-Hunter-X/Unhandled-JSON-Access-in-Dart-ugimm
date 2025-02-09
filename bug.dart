```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response is a JSON list
      final List<dynamic> data = jsonDecode(response.body);
      // Accessing elements that may not exist
      print(data[0]['name']); // Potential error if data is empty or the first element doesn't have a 'name' field
      print(data[1]['address']); // Another potential error
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```