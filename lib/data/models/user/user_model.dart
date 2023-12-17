import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pet/data/index.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  factory UserModel({
    @JsonKey(name: 'data') PersonModel? person,
    @JsonKey(name: 'support') dynamic support,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
