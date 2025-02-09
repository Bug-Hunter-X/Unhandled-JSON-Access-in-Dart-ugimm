```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final List<dynamic>? data = jsonDecode(response.body);
      if (data != null && data.isNotEmpty) {
        final firstElement = data[0];
        if (firstElement is Map && firstElement.containsKey('name')) {
          print(firstElement['name']);
        } else {
          print('First element is not a map or does not contain "name" key.');
        }
        if (data.length > 1) {
          final secondElement = data[1];
          if (secondElement is Map && secondElement.containsKey('address')) {
            print(secondElement['address']);
          } else {
            print('Second element is not a map or does not contain "address" key.');
          }
        } else {
          print('The data list does not have at least two elements.');
        }
      } else {
        print('The data list is empty or null.');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```