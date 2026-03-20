import '6-password.dart';

class User extends Password{
  int id = 0;
  String name = "";
  int age = 0;
  double height = 0;
  String? user_password;

  User({
    required this.id, 
    required this.name,
    required this.age, 
    required this.height,
    required String user_password
    }) : super(password: user_password) {
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
      'user_password': user_password
    };
  }
  
  static User fromJson(Map<dynamic, dynamic> userJson) {
    User newUser = new User(
      id: userJson["id"], 
      name: userJson["name"],
      age: userJson["age"],
      height: userJson["height"],
      user_password: userJson["user_password"]
      );
    return newUser;
  }

  String toString() {
    Password checkPasswordValidity = Password(password: user_password ?? "");
    return ('User(id : $id ,name: $name, age: $age, height: $height, Password: ${checkPasswordValidity.isValid() ?? false})');
  }
}
