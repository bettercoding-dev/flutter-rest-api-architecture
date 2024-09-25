import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'global_providers.g.dart';

@riverpod
Dio dio(DioRef ref) => Dio()
  ..options = BaseOptions(
    baseUrl: 'https://reqres.in/api',
  );
