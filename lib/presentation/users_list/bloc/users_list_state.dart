part of 'users_list_bloc.dart';

@freezed
class UsersListState with _$UsersListState {
  const factory UsersListState({
    @Default(UsersListStatus.initial) UsersListStatus status,
    @Default(<Person>[]) List<Person> users,
    @Default(5) int itemCount,
  }) = _UsersListState;
}
