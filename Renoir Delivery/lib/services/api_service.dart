import 'dart:convert';
import 'package:http/http.dart' as http;
import 'api_endpoints.dart';  // For storing the endpoint URLs

class ApiService {
  final String _apiKey = 'your_api_key_here';  // Store your API key securely
  
  Future<Map<String, dynamic>> fetchData(String endpoint) async {
    final url = Uri.parse(ApiEndpoints.baseUrl + endpoint);
    
    try {
      final response = await http.get(
        url,
        headers: {
          'Authorization': 'Bearer $_apiKey',
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        throw Exception('Failed to load data');
      }
    } catch (error) {
      rethrow;
    }
  }
}
