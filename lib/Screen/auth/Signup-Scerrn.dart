import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lara_push_noti/logic/controllers/auth/Signup_Controller.dart';
import 'package:get/get.dart';

import 'package:lara_push_noti/routes/app_pages.dart';
class SignupScreen extends GetView<SignupController> {
  final registerFormKey1 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[400],

        body:Column(children: [
        Align(
         alignment: Alignment.topRight, child:
        Stack(
        //  mainAxisAlignment: MainAxisAlignment.end,
         // crossAxisAlignment:CrossAxisAlignment.end,
          children: [

            Container(
       //   height: 120,
          width: MediaQuery.of(context).size.width /3,

      height: MediaQuery.of(context).size.height/7,
     //    width:
        child: BezierContainer()),


  ],
),
          // decoration: const BoxDecoration(
          //   image: DecorationImage(
          //     fit: BoxFit.fill,
          //
          //   alignment:Alignment.topRight,
          //     image: AssetImage('assets/images/Group 51.png'),
          //
          //
          //   ),
          //
          //
          //
          // ),
      //  ),],
            ),

         Expanded(flex:6,child:
        ListView(children: [
          Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 1),
                    blurRadius: 5,
                    color: Colors.blue[50]!,
                  ),
                ],
                color: Colors.indigo[50]!,
           border: Border.all(
             color: Colors.teal[200]!,
             width: 2,
           ),
           borderRadius: BorderRadius.circular(12),
         ),
            width: MediaQuery.of(context).size.width,
            //height: MediaQuery.of(context).size.height / 2.4,
           // height: 400.4,
            margin: EdgeInsets.only(right: 17,left: 17),
            //color: Colors.white54,

            child:
            //
            Form(
                key: controller.registerFormkey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
child:
            Column(  children: [
               Container(
                 margin: EdgeInsets.only(top: 17,bottom: 20),
                 child:const Text(
                 'Create Account',
                 style: TextStyle(
                   fontFamily: 'Sitka Small',
                   fontSize: 20,
                   fontWeight: FontWeight.bold,
                   fontStyle: FontStyle.italic,
                   color: Color(0xff0d0101),
                 ),
               ),),
              Container(
                margin: EdgeInsets.only(bottom: 7),
               padding:
              const EdgeInsets.only(left: 30, right: 50),
              //   height: MediaQuery.of(context).size.height / 10,
                child: TextFormField(
               //   textAlign: TextAlign.center,
                  style: const TextStyle(fontSize:
                  15),
                  controller: controller.nameController,
                  validator: (v) {},
                  onSaved: (v) {
                    controller.name = v!;
                  },
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20, right: 20),
                    // helperText: "helper text",
                    labelText: 'User name ',
                    labelStyle: TextStyle(
                      height: 1.4,
                      color: Colors.black87,
                      fontSize: 16.0,
                      fontFamily: 'Sitka Small',
                      ),
                    focusedBorder:
                    UnderlineInputBorder(borderSide: BorderSide(color: Colors.teal)

                    ),


                    suffixIcon: Icon(
                      Icons.person,
                      size: 20,
                      color: Colors.teal,
                    ),
                  ),
                ),
              ),
              Container(margin: EdgeInsets.only(bottom: 7),
                padding:
                const EdgeInsets.only(left: 30, right: 50),
                child: TextFormField(
                  // maxLength: 1,
                  controller: controller.emailController,
                  validator: (v) {
                    return controller.validateEmail(v!);
                  },
                  onSaved: (v) {
                    controller.email = v!;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20, right: 20),
                    // helperText: "helper text",
                    labelText: 'Email ',
                    labelStyle: TextStyle(
                      height: 1.4,
                      color: Colors.black87,
                      fontSize: 16.0,
                      fontFamily: 'Sitka Small',
                      ),
                    focusedBorder:
                    UnderlineInputBorder(borderSide: BorderSide(color: Colors.teal)

                    ),


                    suffixIcon: Icon(
                      Icons.email,
                      size: 20,
                      color: Colors.teal,
                    ),
                  ),
                ),
              ),
              Container(margin: EdgeInsets.only(bottom: 7),
                padding:
                const EdgeInsets.only(left: 30, right: 50),
                child: TextFormField(
                  controller: controller.passwordController,
                  validator: (v) {
                    return controller.validatePassword(v!);
                  },
                  onSaved: (v) {
                    controller.password = v!;
                  },
                  keyboardType: TextInputType.visiblePassword,
                 // obscureText: true,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20, right: 20),
                    // helperText: "helper text",
                    labelText: 'Password ',
                    labelStyle: TextStyle(
                      height: 1.4,
                      color: Colors.black87,
                      fontSize: 16.0,
                      fontFamily: 'Sitka Small',
                      ),
                    focusedBorder:
                    UnderlineInputBorder(borderSide: BorderSide(color: Colors.teal)

                    ),


                    suffixIcon: Icon(
                  //    Icons.remove_red_eye_outlined,
                      Icons.password,
                      size: 20,
                      color: Colors.teal,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 7),
                padding:
                const EdgeInsets.only(left: 30, right: 50),

                child: TextFormField(
                  //textAlign: TextAlign.center,
                  style: const TextStyle(fontSize:
                  15),
                  //  maxLength: 5,
                  controller: controller.cpasswordController,
                  validator: (v) {
                  //  return controller.validatePhone(v!);
                  },
                  onSaved: (v) {
                    controller.cpassword = v!;
                  },
                  keyboardType: TextInputType.visiblePassword,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20, right: 20),
                    // helperText: "helper text",
                    labelText: 'confirm password ',
                    labelStyle: TextStyle(
                      height: 1.4,
                      color: Colors.black87,
                      fontSize: 16.0,
                      fontFamily: 'Sitka Small',
                      ),
                    focusedBorder:
                    UnderlineInputBorder(borderSide: BorderSide(color: Colors.teal)

                    ),


                    suffixIcon: Icon(
                      Icons.password,
                      size: 20,
                      color: Colors.teal,
                    ),
                  ),

                ),
              ),
              Obx(() => controller.isLoading.value == true
                  ? const Center(
                  child: CircularProgressIndicator())
                  : const Text("")),
              const SizedBox(height: 26,),
              SizedBox(
                  width: 185.0,
                  height: 40.0,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.teal,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.circular(45.0),
                              side: BorderSide(
                                  color: Colors.white))),
                      onPressed: () {
                        controller.doRegister(context);
                      },
                      child: const Text("Register now",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                          )))),
              const SizedBox(height: 20,),
               const Text(
                'Or Login Using social media',
                style: TextStyle(
                  fontFamily: 'Sitka Small',
                  fontSize: 15,
                  fontStyle: FontStyle.italic,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 9,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {
                            print("jj");
                          },
                          icon: Icon(
                            Icons.email,
                            size: 30,
                            color: Colors.red[900],
                          )),
                      IconButton(
                          onPressed: () {
                            print("jj");
                          },
                          icon: Icon(
                            Icons.face,
                            size: 30,
                            color: Colors.lightBlue[300],
                          )),
                      IconButton(
                          onPressed: () {
                            print("jj");
                          },
                          icon: Icon(
                            Icons.transfer_within_a_station,
                            size: 30,
                            color: Colors.blue[900],
                          )),
                    ],
                    ),
              const SizedBox(height: 70,),

            ])

            ),

        ),

      ],) ),


     Expanded(flex:1,child:  Align(
       //  alignment: const Alignment(1.0, 0.95),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             const Text(
               'Already have an account?',
               style: TextStyle(
                 fontFamily: 'Sitka Small',
                 fontSize: 18,
                 fontStyle: FontStyle.normal,
                 color: Colors.black,
               ),
             ),
             TextButton(
               onPressed: () {
                 Get.toNamed(Routes.Login);
               },
               child: const Text(
                 'Login',
                 style: TextStyle(
                   fontFamily: 'Sitka Small',
                   fontSize: 23,
                   fontStyle: FontStyle.italic,
                   color: Colors.teal,
                 ),
               ),
             )
           ],
         )),)





        ])

    );
  }
}



class BezierContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
        child: Transform.rotate(
          angle: -pi / 3.5,
          child: ClipPath(
            clipper: ClipPainter(),
            child: Container(
              height: MediaQuery.of(context).size.height *.5,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.teal
                  // gradient: LinearGradient(
                  //     begin: Alignment.topCenter,
                  //     end: Alignment.bottomCenter,
                  //  //   colors: [Themes.color , Themes=color]
                  // )
              ),
            ),
          ),
        )
    );
  }
}

class ClipPainter extends CustomClipper<Path>{
  @override

  Path getClip(Size size) {
    var height = size.height +50 ;
    var width = size.width + 100;
    var path = new Path();

    path.lineTo(0, size.height );
    path.lineTo(size.width , height);
    path.lineTo(size.width , 0);

    /// [Top Left corner]
    var secondControlPoint =  Offset(0  ,0);
    var secondEndPoint = Offset(width * .2  , height *.3);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy, secondEndPoint.dx, secondEndPoint.dy);



    /// [Left Middle]
    var fifthControlPoint =  Offset(width * .3  ,height * .5);
    var fiftEndPoint = Offset(  width * .23, height *.6);
    path.quadraticBezierTo(fifthControlPoint.dx, fifthControlPoint.dy, fiftEndPoint.dx, fiftEndPoint.dy);


    /// [Bottom Left corner]
    var thirdControlPoint =  Offset(0  ,height);
    var thirdEndPoint = Offset(width , height  );
    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy, thirdEndPoint.dx, thirdEndPoint.dy);

    path.lineTo(0, size.height  );
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}