import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/electric_dto.dart';

Future<List> getElecInfo() async {
  final response = await http.get(Uri.parse('http://127.0.0.1:8080/electric/allData'));

  if (response.statusCode == 200) {
    List data = jsonDecode(response.body);
    return data.map((json) => .fromJson(json)).toList();
  } else {
    throw Exception('Failed to load users: ${response.statusCode}');
  }
}