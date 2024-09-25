import 'package:src/user/model/user.dart';
import 'package:src/user/repository/user_repository.dart';

class MockUserRepository implements UserRepository {
  static const _mockUsers = [
    User(
      id: 1,
      email: 'Tim@testmail.com',
      firstName: 'Tim',
      lastName: 'Tester',
      avatar: 'https://reqres.in/img/faces/1-image.jpg',
    ),
    User(
      id: 2,
      email: 'toby@testmail.com',
      firstName: 'Toby',
      lastName: 'Tester',
      avatar: 'https://reqres.in/img/faces/2-image.jpg',
    ),
  ];

  @override
  Future<List<User>> getAllUsers() async {
    // add delay to mimic an api call
    await Future.delayed(const Duration(milliseconds: 300));
    return _mockUsers;
  }
}
