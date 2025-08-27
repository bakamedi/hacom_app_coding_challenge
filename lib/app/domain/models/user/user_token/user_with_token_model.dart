import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_with_token_model.freezed.dart';
part 'user_with_token_model.g.dart';

@freezed
abstract class UserWithToken with _$UserWithToken {
  const factory UserWithToken({@JsonKey(name: 'token') required String token}) =
      _UserWithToken;

  factory UserWithToken.fromJson(Map<String, dynamic> json) =>
      _$UserWithTokenFromJson(json);
}
