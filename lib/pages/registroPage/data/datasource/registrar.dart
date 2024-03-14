import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void register({
  required BuildContext context, // Añade el contexto como un argumento
  required String email,
  required String password,
  required String phone_number,
}) async {
  String apiUrl = 'http://10.0.2.2:3005/api/user/create/';

  Map<String, String> datos = {
    'email': email,
    'password': password,
    'phone_number': phone_number,
  };

  try {
    http.Response respuesta = await http.post(
      Uri.parse(apiUrl),
      body: jsonEncode(datos),
      headers: {"Content-Type": "application/json"},
    );

    if (respuesta.statusCode == 200) {
      print('Los datos se enviaron correctamente a la API');
      print('Respuesta de la API: ${respuesta.body}');

      // Redirige al usuario a la página de inicio de sesión
      Navigator.pushNamed(context, '/'); // Asegúrate de que '/login' es la ruta correcta para la página de inicio de sesión
    } else {
      print('Error al enviar los datos a la API');
      print('Código de estado: ${respuesta.statusCode}');
    }
  } catch (error) {
    print('Error: $error');
  }
}