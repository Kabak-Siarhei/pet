// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UsersListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersListEventCopyWith<$Res> {
  factory $UsersListEventCopyWith(
          UsersListEvent value, $Res Function(UsersListEvent) then) =
      _$UsersListEventCopyWithImpl<$Res, UsersListEvent>;
}

/// @nodoc
class _$UsersListEventCopyWithImpl<$Res, $Val extends UsersListEvent>
    implements $UsersListEventCopyWith<$Res> {
  _$UsersListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$UsersListEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'UsersListEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements UsersListEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
mixin _$UsersListState {
  UsersListStatus get status => throw _privateConstructorUsedError;
  List<Person> get users => throw _privateConstructorUsedError;
  int get itemCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UsersListStateCopyWith<UsersListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersListStateCopyWith<$Res> {
  factory $UsersListStateCopyWith(
          UsersListState value, $Res Function(UsersListState) then) =
      _$UsersListStateCopyWithImpl<$Res, UsersListState>;
  @useResult
  $Res call({UsersListStatus status, List<Person> users, int itemCount});
}

/// @nodoc
class _$UsersListStateCopyWithImpl<$Res, $Val extends UsersListState>
    implements $UsersListStateCopyWith<$Res> {
  _$UsersListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? users = null,
    Object? itemCount = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UsersListStatus,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<Person>,
      itemCount: null == itemCount
          ? _value.itemCount
          : itemCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UsersListStateCopyWith<$Res>
    implements $UsersListStateCopyWith<$Res> {
  factory _$$_UsersListStateCopyWith(
          _$_UsersListState value, $Res Function(_$_UsersListState) then) =
      __$$_UsersListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UsersListStatus status, List<Person> users, int itemCount});
}

/// @nodoc
class __$$_UsersListStateCopyWithImpl<$Res>
    extends _$UsersListStateCopyWithImpl<$Res, _$_UsersListState>
    implements _$$_UsersListStateCopyWith<$Res> {
  __$$_UsersListStateCopyWithImpl(
      _$_UsersListState _value, $Res Function(_$_UsersListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? users = null,
    Object? itemCount = null,
  }) {
    return _then(_$_UsersListState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UsersListStatus,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<Person>,
      itemCount: null == itemCount
          ? _value.itemCount
          : itemCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_UsersListState implements _UsersListState {
  const _$_UsersListState(
      {this.status = UsersListStatus.initial,
      final List<Person> users = const <Person>[],
      this.itemCount = 5})
      : _users = users;

  @override
  @JsonKey()
  final UsersListStatus status;
  final List<Person> _users;
  @override
  @JsonKey()
  List<Person> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  @JsonKey()
  final int itemCount;

  @override
  String toString() {
    return 'UsersListState(status: $status, users: $users, itemCount: $itemCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UsersListState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.itemCount, itemCount) ||
                other.itemCount == itemCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_users), itemCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UsersListStateCopyWith<_$_UsersListState> get copyWith =>
      __$$_UsersListStateCopyWithImpl<_$_UsersListState>(this, _$identity);
}

abstract class _UsersListState implements UsersListState {
  const factory _UsersListState(
      {final UsersListStatus status,
      final List<Person> users,
      final int itemCount}) = _$_UsersListState;

  @override
  UsersListStatus get status;
  @override
  List<Person> get users;
  @override
  int get itemCount;
  @override
  @JsonKey(ignore: true)
  _$$_UsersListStateCopyWith<_$_UsersListState> get copyWith =>
      throw _privateConstructorUsedError;
}
