import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:lara_push_noti/logic/controllers/auth/Login_Controller.dart';

import 'package:lara_push_noti/routes/app_pages.dart';

class LoginScreen extends GetView<LoginController>  {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[400],

        body:Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            // crossAxisAlignment:CrossAxisAlignment.end,
            children: [  Container(
              height: 150,
              width: 150,
              // alignment:Alignment.topRight,

              decoration: const BoxDecoration(
                // image: DecorationImage(
                //   fit: BoxFit.fill,
                //
                //   alignment:Alignment.topRight,
                //   image: AssetImage('assets/images/Group 51.png'),
                //
                //
                // ),
              ),
            ),],),

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
                //     forgot your password ?


                Column(  children: [
                  Container(
                    margin: EdgeInsets.only(top: 17),
                    child:const Text('Hello',
                      style: TextStyle(
                        fontFamily: 'Sitka Small',
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Color(0xff0d0101),
                      ),
                    ),),
                  Container(
                    margin: EdgeInsets.only(top: 4,bottom: 20),
                    child:const Text(' Sign into your account',
                      style: TextStyle(
                        fontFamily: 'Sitka Small',
                        fontSize: 16,

                        //fontStyle: FontStyle.italic,
                        color: Color(0xff0d0101),
                      ),
                    ),),
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
                  Container(//margin: EdgeInsets.only(bottom: 7),
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
                      obscureText: true,
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
                          Icons.remove_red_eye_outlined,
                          size: 20,
                          color: Colors.teal,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 7,right: 16),
                    alignment: Alignment.centerRight,
                    child:TextButton(onPressed: () { print('iio'); },
                    child:Text(
                      'forgot your password ?',
                      style: TextStyle(
                        fontFamily: 'Sitka Small',
                        fontSize: 13,
                        //fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Color(0xff0d0101),
                      ),
                    ), ),
    ),
                  Obx(() => controller.isLoading.value == true
                      ? const Center(
                      child: CircularProgressIndicator())
                      : const Text("")),
                 // const SizedBox(height: 26,),
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
                            controller.doLogin();
                          },
                          child: const Text("Login",
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
                  const SizedBox(height: 80,),

                ])



            ),

          ],) ),


          Expanded(flex:1,child:  Align(
            //  alignment: const Alignment(1.0, 0.95),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don\'t have an account? ',
                    style: TextStyle(
                      fontFamily: 'Sitka Small',
                      fontSize: 18,
                      fontStyle: FontStyle.normal,
                      color: Colors.black,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.toNamed(Routes.Signup);
                    },
                    child: const Text(
                      'Register Now',
                      style: TextStyle(
                        fontFamily: 'Sitka Small',
                        fontSize: 20,
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
