
import 'package:get/get.dart';
import 'package:lara_push_noti/logic/controllers/Button_Controller.dart';

class ButtonBinding extends Bindings {
  @override
  void dependencies () {
    Get.put(ButtonController());
  }
}