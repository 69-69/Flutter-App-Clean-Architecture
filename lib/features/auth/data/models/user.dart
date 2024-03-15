
import 'package:flutter_clean_architecture/features/auth/domain/entities/user_entity.dart';

class User extends UserEntity {
  const User({
    required super.id,
    super.email,
    super.firstName,
    super.lastName,
    super.phone,
    super.role,
  });

  User copyWith({
    String? id,
    String? email,
    String? firstName,
    String? lastName,
    String? phone,
    String? role,
  }) {
    return User(
      id: this.id,
      email: this.email,
      firstName: this.firstName,
      lastName: this.lastName,
      phone: this.phone,
      role: this.role,
    );
  }

  factory User.fromJson(Map<String, dynamic> map) {
    return User(
      id: map["id"].toString(),
      email: map['email'],
      firstName: map['firstName'],
      lastName: map['lastName'],
      phone: map['phone'],
      role: map['role'],
    );
  }

  /// Convert object toMap / toJson[toMap]
  factory User.fromEntity(UserEntity entity) => User(
    id: entity.id,
    email: entity.email,
    firstName: entity.firstName,
    lastName: entity.lastName,
    phone: entity.phone,
    role: entity.role,
  );

  static List<User> fromJsonList(List data) => data
      .map((dynamic i) => User.fromJson(i as Map<String, dynamic>))
      .toList();

  /// Empty user which represents an unauthenticated USER.
  static const empty = User(id: '');

  get name => isEmpty ? '' : '$firstName $lastName';

  /// Convenience getter to determine whether the current user is empty.
  bool get isEmpty => this == User.empty;

  /// Convenience getter to determine whether the current user is not empty.
  bool get isNotEmpty => this != User.empty;
}
