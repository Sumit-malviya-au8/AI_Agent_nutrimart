class User {
  final String id;
  final String name;
  final String mobileNumber;
  final String? email;

  User({
    required this.id,
    required this.name,
    required this.mobileNumber,
    this.email,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as String,
      name: json['name'] as String,
      mobileNumber: json['mobileNumber'] as String,
      email: json['email'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'mobileNumber': mobileNumber,
      'email': email,
    };
  }
}