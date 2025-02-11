```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Incorrectly assuming the response body is a JSON string
      final data = jsonDecode(response.body); //Throws FormatException if response isn't a valid JSON string
      // Process the data
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
    // Handle the error appropriately, e.g., show an error message
  }
}
```