import 'package:flutter_basics/basic_api_call/repository/user_repository.dart';
import 'package:flutter_basics/core/api_response_state.dart';
import 'package:flutter_basics/core/resource.dart';
import 'package:get/get.dart';

import '../model/users_model.dart';

class UserController extends GetxController {
  final UserRepository _userRepository;

  UserController(this._userRepository);

  final list = <UserModel>[].obs;

  Rx<ApiResponseState<bool>> apiResponseState = ApiResponseState<bool>().obs;

  Future<void> getUsers() async {
    apiResponseState.value = ApiResponseState(loading: true);

    final response = await _userRepository.getAllUsers();

    switch (response) {
      case Success():
        {
          apiResponseState.value =
              ApiResponseState(loading: false, response: true);
          list.value = response.data;
        }
      case Error():
        {
          apiResponseState.value = ApiResponseState(
              loading: false,
              response: false,
              alertModel:
                  AlertModel(showAlert: true, message: response.errorMessage));
        }
    }
  }

  void closeAlert() {
    apiResponseState.value =
        ApiResponseState(alertModel: const AlertModel(showAlert: false));
  }
}
