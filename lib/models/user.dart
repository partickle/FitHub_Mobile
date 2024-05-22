class User {
  final int id;
  final String firstName;
  final String lastName;
  final String userTag;
  final String email;
  final String registrationDate;
  final String password;  

  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.userTag,
    required this.email,
    required this.registrationDate,
    required this.password
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      userTag: json['user_tag'],
      email: json['email'],
      registrationDate: json['registration_date'],
      password: json['password']
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'first_name': firstName,
      'last_name': lastName,
      'user_tag': userTag,
      'email': email,
      'registration_date': registrationDate,
      'password': password
    };
  }
}
