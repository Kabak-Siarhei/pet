// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UsersModel _$UsersModelFromJson(Map<String, dynamic> json) {
  return _UsersModel.fromJson(json);
}

/// @nodoc
mixin _$UsersModel {
  @JsonKey(name: 'page')
  dynamic get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  dynamic get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'total')
  dynamic get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  dynamic get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'support')
  dynamic get support => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<PersonModel> get users => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsersModelCopyWith<UsersModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersModelCopyWith<$Res> {
  factory $UsersModelCopyWith(
          UsersModel value, $Res Function(UsersModel) then) =
      _$UsersModelCopyWithImpl<$Res, UsersModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'page') dynamic page,
      @JsonKey(name: 'per_page') dynamic perPage,
      @JsonKey(name: 'total') dynamic total,
      @JsonKey(name: 'total_pages') dynamic totalPages,
      @JsonKey(name: 'support') dynamic support,
      @JsonKey(name: 'data') List<PersonModel> users});
}

/// @nodoc
class _$UsersModelCopyWithImpl<$Res, $Val extends UsersModel>
    implements $UsersModelCopyWith<$Res> {
  _$UsersModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? perPage = freezed,
    Object? total = freezed,
    Object? totalPages = freezed,
    Object? support = freezed,
    Object? users = null,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as dynamic,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as dynamic,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as dynamic,
      support: freezed == support
          ? _value.support
          : support // ignore: cast_nullable_to_non_nullable
              as dynamic,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<PersonModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UsersModelCopyWith<$Res>
    implements $UsersModelCopyWith<$Res> {
  factory _$$_UsersModelCopyWith(
          _$_UsersModel value, $Res Function(_$_UsersModel) then) =
      __$$_UsersModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'page') dynamic page,
      @JsonKey(name: 'per_page') dynamic perPage,
      @JsonKey(name: 'total') dynamic total,
      @JsonKey(name: 'total_pages') dynamic totalPages,
      @JsonKey(name: 'support') dynamic support,
      @JsonKey(name: 'data') List<PersonModel> users});
}

/// @nodoc
class __$$_UsersModelCopyWithImpl<$Res>
    extends _$UsersModelCopyWithImpl<$Res, _$_UsersModel>
    implements _$$_UsersModelCopyWith<$Res> {
  __$$_UsersModelCopyWithImpl(
      _$_UsersModel _value, $Res Function(_$_UsersModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? perPage = freezed,
    Object? total = freezed,
    Object? totalPages = freezed,
    Object? support = freezed,
    Object? users = null,
  }) {
    return _then(_$_UsersModel(
      freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as dynamic,
      freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as dynamic,
      freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as dynamic,
      freezed == support
          ? _value.support
          : support // ignore: cast_nullable_to_non_nullable
              as dynamic,
      null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<PersonModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UsersModel implements _UsersModel {
  const _$_UsersModel(
      @JsonKey(name: 'page') this.page,
      @JsonKey(name: 'per_page') this.perPage,
      @JsonKey(name: 'total') this.total,
      @JsonKey(name: 'total_pages') this.totalPages,
      @JsonKey(name: 'support') this.support,
      @JsonKey(name: 'data') final List<PersonModel> users)
      : _users = users;

  factory _$_UsersModel.fromJson(Map<String, dynamic> json) =>
      _$$_UsersModelFromJson(json);

  @override
  @JsonKey(name: 'page')
  final dynamic page;
  @override
  @JsonKey(name: 'per_page')
  final dynamic perPage;
  @override
  @JsonKey(name: 'total')
  final dynamic total;
  @override
  @JsonKey(name: 'total_pages')
  final dynamic totalPages;
  @override
  @JsonKey(name: 'support')
  final dynamic support;
  final List<PersonModel> _users;
  @override
  @JsonKey(name: 'data')
  List<PersonModel> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'UsersModel(page: $page, perPage: $perPage, total: $total, totalPages: $totalPages, support: $support, users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UsersModel &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.perPage, perPage) &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality()
                .equals(other.totalPages, totalPages) &&
            const DeepCollectionEquality().equals(other.support, support) &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(perPage),
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(totalPages),
      const DeepCollectionEquality().hash(support),
      const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UsersModelCopyWith<_$_UsersModel> get copyWith =>
      __$$_UsersModelCopyWithImpl<_$_UsersModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UsersModelToJson(
      this,
    );
  }
}

abstract class _UsersModel implements UsersModel {
  const factory _UsersModel(
      @JsonKey(name: 'page') final dynamic page,
      @JsonKey(name: 'per_page') final dynamic perPage,
      @JsonKey(name: 'total') final dynamic total,
      @JsonKey(name: 'total_pages') final dynamic totalPages,
      @JsonKey(name: 'support') final dynamic support,
      @JsonKey(name: 'data') final List<PersonModel> users) = _$_UsersModel;

  factory _UsersModel.fromJson(Map<String, dynamic> json) =
      _$_UsersModel.fromJson;

  @override
  @JsonKey(name: 'page')
  dynamic get page;
  @override
  @JsonKey(name: 'per_page')
  dynamic get perPage;
  @override
  @JsonKey(name: 'total')
  dynamic get total;
  @override
  @JsonKey(name: 'total_pages')
  dynamic get totalPages;
  @override
  @JsonKey(name: 'support')
  dynamic get support;
  @override
  @JsonKey(name: 'data')
  List<PersonModel> get users;
  @override
  @JsonKey(ignore: true)
  _$$_UsersModelCopyWith<_$_UsersModel> get copyWith =>
      throw _privateConstructorUsedError;
}
