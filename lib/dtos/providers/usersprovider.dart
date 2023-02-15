import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import '../response/userresponsedto.dart';

class UserProvider extends ChangeNotifier{
  final logger = Logger();

  List<UserResponseDto>? _users;

  List<UserResponseDto>? get users => _users;

  Future fetchUsers() async {
  final response = await http
      .get(Uri.parse('https://reqres.in/api/users'));

  if (response.statusCode == 200) {
    //logger.d('Respuesta: ${response.body}');
    // If the server did return a 200 OK response,
    // then parse the JSON.
    // return Album.fromJson(jsonDecode(response.body));
    final json = jsonDecode(response.body);
    final List<dynamic>data = json['data'];
    _users = data.map((e) => UserResponseDto.fromMap(e)).toList();   
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

}