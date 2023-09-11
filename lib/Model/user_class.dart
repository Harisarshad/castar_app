// ignore_for_file: non_constant_identifier_names

class User {
  int id;
  String email;
  String password;
  String firstName;
  String lastName;
  String role;
  DateTime created_at;

  User(this.id, this.email, this.password, this.firstName, this.lastName,
      this.role, this.created_at);

  factory User.fromJson(Map<String, dynamic> json) => User(
        int.parse(json["id"]),
        json["email"],
        json["password"],
        json["firstName"],
        json["lastName"],
        json["role"],
        DateTime.parse(json["created_at"]),
      );

  Map<String, dynamic> toJoson() => {
        "id": id.toString(),
        "email": email,
        "password": password,
        "firstName": firstName,
        "lastName": lastName,
        "role": role,
        "created_at": created_at.toString()
      };
}
