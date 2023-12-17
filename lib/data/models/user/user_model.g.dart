// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_UserModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data', 'support'],
        );
        final val = _$_UserModel(
          person: $checkedConvert(
              'data',
              (v) => v == null
                  ? null
                  : PersonModel.fromJson(v as Map<String, dynamic>)),
          support: $checkedConvert('support', (v) => v),
        );
        return val;
      },
      fieldKeyMap: const {'person': 'data'},
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.person);
  writeNotNull('support', instance.support);
  return val;
}
