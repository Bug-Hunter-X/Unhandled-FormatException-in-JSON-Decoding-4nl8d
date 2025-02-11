```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Check if the response body is a valid JSON string
      try {
        final data = jsonDecode(response.body);
        // Process the data
      } on FormatException catch (e) {
        print('Error: Invalid JSON format: $e');
        // Handle the invalid JSON format appropriately, e.g., log it and retry.
      } catch (e) {
        print('Error: $e');
        //Handle other potential errors
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // Handle the error appropriately, e.g., show an error message to the user
  }
}
```