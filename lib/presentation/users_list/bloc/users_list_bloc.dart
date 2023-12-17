import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:pet/index.dart';

part 'users_list_bloc.freezed.dart';
part 'users_list_event.dart';
part 'users_list_state.dart';

class UsersListBloc extends Bloc<UsersListEvent, UsersListState> {
  UsersListBloc() : super(const UsersListState()) {
    on<_Started>(_onStarted);
  }

  final GetUsersInfoUseCase getUsersInfoUseCase =
      GetIt.I.get<GetUsersInfoUseCase>();

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<UsersListState> emit,
  ) async {
    emit(
      state.copyWith(
        status: UsersListStatus.loading,
        itemCount: 5,
      ),
    );
    try {
      final List<Person> users = await getUsersInfoUseCase();
      emit(
        state.copyWith(
          status: UsersListStatus.success,
          users: users,
          itemCount: users.length,
        ),
      );
    } catch (_) {
      emit(
        state.copyWith(
          status: UsersListStatus.failure,
          itemCount: 1,
        ),
      );
    }
  }
}
