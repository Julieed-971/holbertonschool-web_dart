import 'dart:convert';

import '3-util.dart';

Future<String> greetUser() async {
  try {
    String userData = await fetchUserData();
    Map<String, dynamic> userObject = jsonDecode(userData);
    String userName = userObject["username"];
    return ('Hello $userName');
  } catch (error ){
    return ('error caught: $error');
  }
}

Future<String> loginUser() async {
  try {
    bool isLoggedIn = await checkCredentials();
    if (isLoggedIn) {
      String greetings = await greetUser();
      print('There is a user: true');
      return greetings;
    }
    print('There is a user: false');
    return ('Wrong credentials');
  } catch (error ){
    return ('error caught: $error');
  }
}