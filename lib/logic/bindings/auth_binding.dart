
import 'package:get/get.dart';

import 'package:lara_push_noti/logic/controllers/auth/auth_Controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies () {
    Get.put(AuthController());
  }
}