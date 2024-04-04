// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:get/get.dart';
// import 'package:lara_push_noti/logic/controllers/auth/Signup_Controller.dart';
//
// class RegisterView extends GetView<SignupController> {
//
//   final registerFormKey = GlobalKey<FormState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(12),
//           child: Center(
//               child: Form(
//             key: controller.registerFormkey,
//
//             autovalidateMode: AutovalidateMode.onUserInteraction,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 TextFormField(
//                   controller: controller.nameController,
//                   validator: (v)   { },
//                   onSaved: (v) {controller.name=v!;},
//                   keyboardType: TextInputType.text,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     labelText: "name",
//                     prefixIcon: const Icon(Icons.supervised_user_circle),
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 TextFormField(
//                   controller: controller.emailController,
//                   validator: (v)
//                   { return controller.validateEmail(v!); },
//                   onSaved: (v) {
//                     controller.email=v!;
//                   },
//                   keyboardType: TextInputType.emailAddress,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     labelText: "email",
//                     prefixIcon: const Icon(Icons.email),
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 TextFormField(
//                   controller: controller.passwordController,
//                   validator: (v) { return controller.validatePassword(v!);},
//                   onSaved: (v) {
//                     controller.password=v!;
//                   },
//                   keyboardType: TextInputType.visiblePassword,
//                   obscureText: true,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     labelText: "password",
//                     prefixIcon: const Icon(Icons.password),
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                   Obx(() => controller.isLoading.value    == true ?
//                       const Center (child : CircularProgressIndicator ())
//                           : const Text("")),
//                const SizedBox (height: 20),
//
//
//                 ElevatedButton(
//                     onPressed: () {
//                       controller.doRegister();
//                     },
//                     child: const Text("Register"))
//               ],
//             ),
//           )),
//         ),
//       ),
//     );
//   }
// }
