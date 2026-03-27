import 'dart:convert';

import 'package:http/http.dart' as http;

Future<dynamic> printRmCharacters() async {
  try {
    var rmApiUrl = Uri.https('rickandmortyapi.com', '/api/character');
    var rmApiResponse = await http.get(rmApiUrl);
    Map<String, dynamic> rmApiDecodedResponse = {};
    if (rmApiResponse.statusCode == 200) {
      rmApiDecodedResponse = jsonDecode(rmApiResponse.body);
    }
    List rmApiResults = rmApiDecodedResponse["results"];
    for (int i= 0; i < rmApiResults.length; i++) {
      print(rmApiResults[i]['name']);
    }
  } catch (error) {
    print('error caught: $error');
  }
}
