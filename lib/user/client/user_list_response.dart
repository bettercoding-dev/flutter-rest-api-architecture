import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:src/user/model/user.dart';

part 'user_list_response.freezed.dart';
part 'user_list_response.g.dart';

@freezed
class UserListResponse with _$UserListResponse {
  const factory UserListResponse({
    required List<User> data,
  }) = _UserListResponse;

  factory UserListResponse.fromJson(Map<String, dynamic> json) =>
      _$UserListResponseFromJson(json);
}
