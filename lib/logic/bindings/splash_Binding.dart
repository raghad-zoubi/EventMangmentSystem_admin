import 'package:get/get.dart';
import 'package:lara_push_noti/logic/controllers/auth/SplashController.dart';
class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());

    }}