import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'search_status.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(const SearchState()) {
    on<_Started>(_onStarted);
    on<_UserIdChanged>(_onUserIdChanged);
  }

  static const num _minUserId = 1;
  static const num _maxUserId = 30;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<SearchState> emit,
  ) async =>
      emit(
        state.copyWith(status: SearchStatus.success),
      );

  FutureOr<void> _onUserIdChanged(
    _UserIdChanged event,
    Emitter<SearchState> emit,
  ) async {
    if (event.userId == null ||
        (event.userId != null && event.userId!.isEmpty)) {
      emit(
        state.copyWith(
          status: SearchStatus.success,
          userId: '',
        ),
      );
    } else {
      final num userId = num.parse(event.userId!).clamp(_minUserId, _maxUserId);
      if (userId <= _minUserId || userId >= _maxUserId) {
        emit(
          state.copyWith(
            status: SearchStatus.success,
            userId: '',
          ),
        );
      }
      emit(
        state.copyWith(
          status: SearchStatus.success,
          userId: userId.toString(),
        ),
      );
    }
  }
}
