import 'dart:ffi';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'freezed_data_classes.freezed.dart';

@freezed
class LoginObject with _$LoginObject {
  factory LoginObject(String username, String password,String deviceId) = _LoginObject;
}
@freezed
class RegisterObject with _$RegisterObject {
  factory RegisterObject(String username,String password,String password2, int languageId) = _RegisterObject;
}
