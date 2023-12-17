// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UsersModel _$$_UsersModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_UsersModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'page',
            'per_page',
            'total',
            'total_pages',
            'support',
            'data'
          ],
        );
        final val = _$_UsersModel(
          $checkedConvert('page', (v) => v),
          $checkedConvert('per_page', (v) => v),
          $checkedConvert('total', (v) => v),
          $checkedConvert('total_pages', (v) => v),
          $checkedConvert('support', (v) => v),
          $checkedConvert(
              'data',
              (v) => (v as List<dynamic>)
                  .map((e) => PersonModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {
        'perPage': 'per_page',
        'totalPages': 'total_pages',
        'users': 'data'
      },
    );

Map<String, dynamic> _$$_UsersModelToJson(_$_UsersModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('page', instance.page);
  writeNotNull('per_page', instance.perPage);
  writeNotNull('total', instance.total);
  writeNotNull('total_pages', instance.totalPages);
  writeNotNull('support', instance.support);
  val['data'] = instance.users;
  return val;
}
