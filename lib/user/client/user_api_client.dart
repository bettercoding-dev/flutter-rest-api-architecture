import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:src/global_providers.dart';
import 'package:src/user/client/user_list_response.dart';

part 'user_api_client.g.dart';

@riverpod
UserApiClient userApiClient(UserApiClientRef ref) => UserApiClient(
      ref.watch(dioProvider),
    );

@RestApi()
abstract class UserApiClient {
  factory UserApiClient(Dio dio) = _UserApiClient;

  @GET('/users')
  Future<UserListResponse> getUserList();
}
