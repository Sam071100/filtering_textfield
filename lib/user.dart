class User {
  int id;
  String name;
  String email;
  User({this.id, this.name, this.email});

  // Maps the value from the json to the user object
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json["id"] as int,
      name: json["name"] as String,
      email: json["email"] as String,
    );
  }
}
// This was Model class
