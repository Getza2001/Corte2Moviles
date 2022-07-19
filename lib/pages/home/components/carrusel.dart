import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<String>> carruselImagenes() async {
  Map<String, String> headers = {'Content-Type': 'application/json'};
  String api = 'desarrollovan-tis.dedyn.io:4030';
  String path = '/GetImagesCarousel';

  final response = await http.post(
    Uri.http(api, path),
    headers: headers,
    body: json.encode(
      {'idChannel': '1'},
    ),
  );

  if (response.statusCode == 200) {
    final map = json.decode(response.body);
    List<String> list = [];
    for (Map items in map['dtoImageCarousels']) {
      list.add(items['url']);
    }
    return list;
  } else {
    return [];
  }
}
