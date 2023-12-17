part of 'user_info_bloc.dart';

@freezed
class UserInfoState with _$UserInfoState {
  const factory UserInfoState({
    @Default(UserInfoStatus.initial) UserInfoStatus status,
    @Default(null) Person? person,
  }) = _UserInfoState;
}
