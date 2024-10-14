import 'dart:convert';

import 'package:flutter_basics/basic_api_call/model/api_service.dart';
import 'package:flutter_basics/basic_api_call/model/users_model.dart';
import 'package:flutter_basics/core/resource.dart';

class UserRepository {
  final ApiService _apiService;

  UserRepository(this._apiService);

  Future<Resource<List<UserModel>>> getAllUsers() async {
    try {
      final response = await _apiService.getAllUser();
      if (response.statusCode == 200) {
        final result = List<UserModel>.from(
                json.decode(response.body).map((x) => UserModel.fromJson(x)))
            .toList();
        return Success(data: result);
      } else if (response.statusCode == 404) {
        return const Error(errorMessage: "UnAuthorized");
      } else {
        return const Error(errorMessage: "Error");
      }
    } catch (e) {
      return const Error(errorMessage: "Error");
    }
  }
}
