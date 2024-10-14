import 'package:flutter_basics/basic_api_call/controller/user_controller.dart';
import 'package:flutter_basics/basic_api_call/model/api_service.dart';
import 'package:flutter_basics/basic_api_call/repository/user_repository.dart';
import 'package:get/get.dart';

class UserBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApiService>(() => ApiService());
    Get.lazyPut<UserRepository>(() => UserRepository(Get.find()));
    Get.lazyPut<UserController>(() => UserController(Get.find()));
  }
}
