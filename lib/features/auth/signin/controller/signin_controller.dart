import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SigninController extends GetxController {
  var emailController = TextEditingController(); 
  var passwordController = TextEditingController(); 

  RxBool isPasswordVisible = false.obs;
   void togglePasswordVisible() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }
}