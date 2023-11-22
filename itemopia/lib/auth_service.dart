// lib/services/auth_service.dart
import 'dart:convert';
import 'package:http/http.dart' as http;

class AuthService {
  static const String baseUrl =
      'http://localhost:8000'; // Ganti dengan URL Django Anda

  Future<bool> login(String username, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/api/token/'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'username': username,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      // Simpan token ke shared preferences atau secure storage
      // untuk digunakan dalam permintaan berikutnya
      // Implementasikan logika penyimpanan token sesuai kebutuhan aplikasi Anda
      return true;
    } else {
      throw Exception('Login failed');
    }
  }
}
