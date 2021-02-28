// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Account _$AccountFromJson(Map<String, dynamic> json) {
  return Account(
    errors: json['errors'] as String,
    accntNotFound: json['accntNotFound'] as String,
    data: json['data'] == null
        ? null
        : AccountData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AccountToJson(Account instance) => <String, dynamic>{
      'errors': instance.errors,
      'accntNotFound': instance.accntNotFound,
      'data': instance.data,
    };
