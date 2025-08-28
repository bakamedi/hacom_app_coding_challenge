import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hacom_app_test/app/domain/models/user/login/login_model.dart';

part 'sign_in_state.freezed.dart';

@freezed
abstract class SignInState with _$SignInState {
  const SignInState._();

  const factory SignInState({
    GlobalKey<FormState>? formSignIn,
    @Default(Login(name: '', phone: '')) Login login,
  }) = _SignInState;

  static SignInState get initialState => SignInState(
    login: Login(name: '', phone: ''),
    formSignIn: GlobalKey(),
  );
}
