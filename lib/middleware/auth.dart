import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:lara_push_noti/routes/app_pages.dart';

import '../main.dart';

class AuthMiddleware extends GetMiddleware {
//  var controller = Get.put(AuthController());

  // var storage = const FlutterSecureStorage();
  // var tokenn = ''.obs;
  // late var result = ''.obs;

  int? get priority => 1;

  // Future<void> isAuth() async {
  //   try {
  //     (await storage.read(key: 'token'))!;
  //     result.value = 'OK';
  //   } catch (e) {
  //     result.value = 'NOOK';
  //   }
  // }

  @override
  RouteSettings? redirect(String? route) {
    // print('opppppppppppppppppppppppppppppuuuuuuuu is auth');
    // print(role);
    // print(name);
    // print(token);
    if (token==null) {
      return RouteSettings(name: Routes.Signup);
    }
  }
}
//
// //This function will be called  before anything created we can use it to
//  //change something about the page or give it new page
// @override
// GetPage? onPageCalled(GetPage? RegisterView) {
//
//  // final authController = Get.find<AuthController>();
//       Get.put(AuthController());
//
//   return super.onPageCalled(RegisterView);
// }
//
// //This function will be called right before the Bindings are initialized.
// // Here we can change Bindings for this page.
// @override
// List<Bindings>? onBindingsStart(List<Bindings>? bindings) {
//   return super.onBindingsStart(bindings);
// }
//
// //This function will be called right after the Bindings are initialized.
// // Here we can do something after  bindings created and before creating the page widget.
// @override
// GetPageBuilder? onPageBuildStart(GetPageBuilder? page) {
//   return super.onPageBuildStart(page);
// }
//
// // Page build and widgets of page will be shown
// @override
// Widget onPageBuilt(Widget page) {
//   return super.onPageBuilt(page);
// }
//
// //This function will be called right after disposing all the related objects
// // (Controllers, zbale.views, ...) of the page.
// @override
// void onPageDispose() {
//   super.onPageDispose();
// }
// }
