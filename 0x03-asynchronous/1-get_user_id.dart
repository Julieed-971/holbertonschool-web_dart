import 'dart:convert';

import '1-util.dart';

Future<String> getUserId() async {
  String userData = await fetchUserData();
  Map<String, dynamic> userObject = jsonDecode(userData);
  return userObject["id"];
}
