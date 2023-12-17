import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pet/data/index.dart';

part 'users_model.freezed.dart';
part 'users_model.g.dart';

@freezed
class UsersModel with _$UsersModel {
  const factory UsersModel(
    @JsonKey(name: 'page') dynamic page,
    @JsonKey(name: 'per_page') dynamic perPage,
    @JsonKey(name: 'total') dynamic total,
    @JsonKey(name: 'total_pages') dynamic totalPages,
    @JsonKey(name: 'support') dynamic support,
    @JsonKey(name: 'data') List<PersonModel> users,
  ) = _UsersModel;

  factory UsersModel.fromJson(Map<String, dynamic> json) =>
      _$UsersModelFromJson(json);
}
