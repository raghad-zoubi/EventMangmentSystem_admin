import 'package:get/get.dart';
import 'package:lara_push_noti/logic/controllers/auth/Signup_Controller.dart';

class SignupBinding extends Bindings {
  @override
  void dependencies () {
    Get.lazyPut(() => SignupController());
  }
}