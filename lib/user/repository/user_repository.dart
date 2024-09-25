import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:src/user/client/user_api_client.dart';
import 'package:src/user/model/user.dart';
import 'package:src/user/repository/api_user_repository.dart';

part 'user_repository.g.dart';

@riverpod
UserRepository userRepository(ref) => ApiUserRepository(
      ref.watch(userApiClientProvider),
    );

abstract interface class UserRepository {
  Future<List<User>> getAllUsers();
}
