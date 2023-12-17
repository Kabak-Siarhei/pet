import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:pet/domain/index.dart';

import 'user_info_status.dart';

part 'user_info_bloc.freezed.dart';
part 'user_info_event.dart';
part 'user_info_state.dart';

class UserInfoBloc extends Bloc<UserInfoEvent, UserInfoState> {
  UserInfoBloc() : super(const UserInfoState()) {
    on<_Started>(_onStarted);
  }

  final GetUserInfoUseCase getUserInfoUseCase =
      GetIt.I.get<GetUserInfoUseCase>();

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<UserInfoState> emit,
  ) async {
    emit(
      state.copyWith(
        status: UserInfoStatus.loading,
      ),
    );
    try {
      final Person userInfo = await getUserInfoUseCase(id: event.id);
      emit(
        state.copyWith(
          status: UserInfoStatus.success,
          person: userInfo,
        ),
      );
    } catch (_) {
      emit(
        state.copyWith(
          status: UserInfoStatus.failure,
        ),
      );
    }
  }
}
