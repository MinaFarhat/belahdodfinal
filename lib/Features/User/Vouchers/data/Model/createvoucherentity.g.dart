// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'createvoucherentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateVoucherEntity _$CreateVoucherEntityFromJson(Map<String, dynamic> json) =>
    CreateVoucherEntity(
      json['is_found'] as bool,
      json['is_created'] as bool,
    );

Map<String, dynamic> _$CreateVoucherEntityToJson(
        CreateVoucherEntity instance) =>
    <String, dynamic>{
      'is_found': instance.isFound,
      'is_created': instance.isCreated,
    };
