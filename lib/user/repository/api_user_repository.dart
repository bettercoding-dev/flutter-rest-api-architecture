import 'dart:developer';

import 'package:src/user/client/user_api_client.dart';
import 'package:src/user/model/user.dart';
import 'package:src/user/repository/user_repository.dart';

class ApiUserRepository implements UserRepository {
  final UserApiClient client;

  const ApiUserRepository(this.client);

  @override
  Future<List<User>> getAllUsers() async {
    try {
      final response = await client.getUserList();
      return response.data;
    } catch (error, trace) {
      log('could not fetch users', error: error, stackTrace: trace);
      rethrow;
    }
  }
}
