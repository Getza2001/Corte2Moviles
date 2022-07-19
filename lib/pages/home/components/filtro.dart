import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<String>> filterPets() async {
  Map<String, String> headers = {'Content-Type': 'application/json'};
  String api = 'desarrollovan-tis.dedyn.io:4030';
  String path = '/GetPetTaxonomia/';

  final response = await http.post(
    Uri.http(api, path),
    headers: headers,
    body: json.encode(
      {'idChannel': '1'},
    ),
  );
  if (response.statusCode == 200) {
    final map = json.decode(response.body);
    List<String> listPets = [];
    for (Map<dynamic, dynamic> itemMap in map['dtoPetTaxonomies']) {
      listPets.add(itemMap['pet'][0]['pet']);
    }
    return listPets;
  } else {
    return [];
  }
}
