

import 'package:get/get.dart';
import 'package:lara_push_noti/Screen/auth/Await_Screen.dart';
import 'package:lara_push_noti/Screen/auth/Splash-Screen.dart';
import 'package:lara_push_noti/Screen/books/BookDetailns_Scree.dart';
import 'package:lara_push_noti/Screen/books/Books-Screen.dart';
import 'package:lara_push_noti/Screen/chat/Chat-Screen.dart';
import 'package:lara_push_noti/Screen/chat/ChatDetails.dart';
import 'package:lara_push_noti/Screen/const/button.dart';
import 'package:lara_push_noti/Screen/home/Sitting_Screen.dart';
import 'package:lara_push_noti/Screen/home/Update.dart';
import 'package:lara_push_noti/Screen/home/Detils_alot.dart';
import 'package:lara_push_noti/Screen/auth/Login-Screen.dart';
import 'package:lara_push_noti/Screen/auth/Signup-Scerrn.dart';
import 'package:lara_push_noti/logic/bindings/login_binding.dart';
import 'package:lara_push_noti/logic/bindings/signup_binding.dart';
import 'package:lara_push_noti/logic/bindings/splash_Binding.dart';
import '../Screen/add/Add_Screeen.dart';
import '../Screen/const/Search.dart';
import '../Screen/home/Detils.dart';

import '../Screen/my/profile.dart';



class AppPages {
  AppPages._();

  static final routes = [



      GetPage(
        name:Routes.profile,
       page: () => profile(),
        //  binding: AuthBinding(),
        // middlewares:[AuthMiddleware(),AdminMiddleware()]
      ),

  ];
}

class Routes {
  static const addnewproduct = '/addnewproduct';
  static const Login = '/login';
  static const Signup = '/signup';
  static const Splash = '/splash';
  static const ChatDetails = '/ChatDetails';
  static const Book = '/book';
  static const ShowDetil_All = '/ShowDetil_All';
  static const Detils= '/Detils';
  static const detils= '/detils';
  static const SecondScreen = '/SecondScreen';
  static const Chat = '/Chat';
   static const Home = '/home';
  static const button = '/button';
  static const Add = '/Add';
  static const Update = '/Update';
  static const Detil_alot = '/Detil_alot';
  static const Detil_one = '/Detil_one';
  static const sitting = '/sitting';
  static const Add_profile_Screen = '/Add_profile_Screen';
  static const profile_Screen = '/profile_Screen';
  static const Await_Screen = '/Await_Screen';
  static const BookDetails = '/BookDetails';
  static const Search = '/Search';
  static const booked = '/booked';
  static const noti = '/noti';
  static const account = '/account';
  static const profile = '/profile';
  static const inaccountchange = '/inaccountchange';
  static const inaccountdelete = '/inaccountdelete';
}
