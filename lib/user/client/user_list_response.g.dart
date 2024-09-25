// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserListResponseImpl _$$UserListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UserListResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserListResponseImplToJson(
        _$UserListResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
