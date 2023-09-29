class UserModel {
  final String? name;
  final String email;

  UserModel(
      { this.name,
      required this.email,
});

  factory UserModel.fromJson(data) {
    return UserModel(
        name: data['name'],
        email: data['email'],);
  }

  toJson() {
    return {
      'name': name,
      'email': email,
    };
  }
}
