// agregar la estrucutra de inicio de sesion
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/homaPage/home_page.dart';
import 'package:flutter_application_1/pages/iniciarSesionPage/iniciar_sesion_page.dart';
import 'package:flutter_application_1/pages/sp32Page/sp32_page.dart';
import 'package:http/http.dart' as http;

void inicio({
  required BuildContext context, // Añade el contexto como un argumento
  required String email,
  required String password,

}) async {
  String apiUrl = 'http://10.0.2.2:3005/api/user/login';

Map<String, String> datos = {
  'email': email,
  'password': password, // Elimina el espacio extra aquí
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
  // ignore: use_build_context_synchronously
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Sp32Page()),
  );
}else {
      print('Error al enviar los datos a la API');
      print('Código de estado: ${respuesta.statusCode}');
    }
  } catch (error) {
    print('Error: $error');
  }
}