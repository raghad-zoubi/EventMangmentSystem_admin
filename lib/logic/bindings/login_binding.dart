import 'package:get/get.dart';
import 'package:lara_push_noti/logic/controllers/auth/Login_Controller.dart';
class LoginBinding extends Bindings {
  @override
  void dependencies () {
    Get.lazyPut(() => LoginController());
  }
}