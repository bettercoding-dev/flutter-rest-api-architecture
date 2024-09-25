import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:src/user/model/user.dart';
import 'package:src/user/repository/user_repository.dart';

part 'user_controller.g.dart';

@riverpod
class UserController extends _$UserController {
  @override
  Future<List<User>> build() async {
    final userRepository = ref.watch(userRepositoryProvider);
    return userRepository.getAllUsers();
  }
}
