

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

@immutable
sealed class RegisterState {}

final class RegisterInitial extends RegisterState {}

final class RegisterLoading extends RegisterState {}

final class RegisterError extends RegisterState {
  final String message;
  RegisterError({required this.message});
}

final class RegisterSuccess extends RegisterState{
  final User user;
  RegisterSuccess( this.user);
}

final class LoginLogout extends RegisterState {}