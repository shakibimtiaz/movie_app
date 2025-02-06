import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  Future<void> logout() async {
    try {
      EasyLoading.show(status: "Logging out...");
      await FirebaseAuth.instance.signOut();
      Get.offAllNamed('/loginScreen');
    } catch (e) {
      EasyLoading.showError("Error $e");
    } finally {
      EasyLoading.dismiss();
    }
  }
}
