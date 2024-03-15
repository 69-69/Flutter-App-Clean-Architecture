import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String id;
  final String? email;
  final String? firstName;
  final String? lastName;
  final String? role;
  final String? phone;

  const UserEntity({
    required this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.phone,
    this.role,
  });

  @override
  List<Object?> get props => [id, email, firstName, lastName, role, phone];
}
