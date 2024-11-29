import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  final String baseUrl = 'https://api.example.com'; // Replace with your actual API URL

  // Login method
  Future<bool> login(String username, String password) async {
    final url = Uri.parse('$baseUrl/login'); // Adjust to your login endpoint

    try {
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
        },
        body: json.encode({
          'username': username,
          'password': password,
        }),
      );

      if (response.statusCode == 200) {
        // If the response is successful, save the token in shared preferences
        final data = json.decode(response.body);
        final token = data['token'];  // Assuming token is returned in the response
        await _saveToken(token);
        return true;
      } else {
        // Handle login error (e.g., wrong credentials)
        return false;
      }
    } catch (error) {
      rethrow;
    }
  }

  // Signup method
  Future<bool> signup(String username, String email, String password) async {
    final url = Uri.parse('$baseUrl/signup'); // Replace with your signup endpoint

    try {
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
        },
        body: json.encode({
          'username': username,
          'email': email,
          'password': password,
        }),
      );

      if (response.statusCode == 200) {
        // User successfully registered
        return true;
      } else {
        // Handle signup error (e.g., user already exists)
        return false;
      }
    } catch (error) {
      rethrow;
    }
  }

  // Logout method
  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('token');  // Remove the token on logout
  }

  // Method to get the stored token
  Future<String?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }

  // Method to save the token
  Future<void> _saveToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token); // Store the token
  }

  // Check if the user is logged in (token exists)
  Future<bool> isLoggedIn() async {
    final token = await getToken();
    return token != null;
  }
}
