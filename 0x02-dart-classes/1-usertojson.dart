class User {
  String name = "";
  int age = 0;
  double height = 0;

  User(name, age, height) {
    this.name = name;
    this.age = age;
    this.height = height;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> userMap = {
      'name': this.name,
      'age': this.age,
      'height': this.height,
    };
    return userMap;
  }
}
