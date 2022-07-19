// import 'dart:convert';
// import 'package:http/http.dart' as http;

// String ip = '192.168.0.14:3000';

// Future<Map<String, dynamic>> logueoServer(
//     String correo, String password) async {
//   String url = '/users/login';
//   Map<String, String> headers = {'Content-Type': 'application/json'};

//   try {
//     final server = await http.post(
//       Uri.http(ip, url),
//       headers: headers,
//       body: json.encode(
//         {'correo': correo, 'password': password},
//       ),
//     );

//     if (server.statusCode == 200) {
//       final data = json.decode(server.body);
//       Map<String, dynamic> tok = {
//         'status': data['status'],
//         'token': data['token']
//       };
//       return tok;
//     } else {
//       return {'status': 'error'};
//     }
//   } catch (err) {
//     return {'status': '$err'};
//   }
// }

import 'dart:convert';

import 'package:http/http.dart' as http;

String ip = "10.0.2.2:3000";

Future<Map<String, dynamic>> logueoServer(
    String correo, String password) async {
  Map<String, String> headers = {'Content-Type': 'application/json'};
  String url = '/users/login/';

  try {
    final loginAPI = await http.post(
      Uri.http(ip, url),
      headers: headers,
      body: json.encode(
        {'correo': correo, 'password': password},
      ),
    );
    if (loginAPI.statusCode == 200) {
      final data = json.decode(loginAPI.body);
      Map<String, dynamic> responseMap = {
        'status': data['status'],
        'token': data['token']
      };
      return responseMap;

      // return {'status':'success'};
    } else {
      return {'status': 'Error'};
    }
  } catch (error) {
    return {'status': '$error Error al conectarse con el servidor'};
  }
}

Future<String> register(String nombre, String correo, String password) async {
  try {
    final registerAPI = await http.post(
      Uri.http(ip, "/users/register"),
      headers: {"Content-Type": "application/json; charset=UTF-8"},
      body: json
          .encode({"nombre": nombre, "correo": correo, "password": password}),
    );

    if (registerAPI.statusCode == 200) {
      return "Usuario creado";
    } else {
      return "Error en la peticion";
    }
  } catch (error) {
    return "$error";
  }
}
