import 'package:get/get.dart';

class ButtonController extends GetxController {
 var index = 0.obs;
 onItemTapped(var inde) {

  index.value= inde;
  update();
 }

 @override
 void onInit() {
  try {
   index.value = Get.arguments['index'];
  } catch (_) {
   index.value = 0;
  }
  print(
      "____________________________now you are in onInit of controller Button");

  print("index is :");
  print(index.value);

 }
}
