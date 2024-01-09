import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:galsen_travel/constant.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class RegisterController extends GetxController {
  final formKey = GlobalKey<FormState>();

  validateEmail(String? email) {
    if (!GetUtils.isEmail(email ?? '')) {
      return "Email incorrect";
    }
    return null;
  }

  validatePassword(String? password) {
    if (!GetUtils.isLengthGreaterOrEqual(password, 6)) {
      return "Mot de trop petit";
    }
    return null;
  }

    validateConfirmePassword(String? password) {
    if (!GetUtils.isLengthGreaterOrEqual(password, 6)) {
      return "Mot de trop petit";
    }
    return null;
  }

  Future onSubmit() async {
    if (formKey.currentState!.validate()) {
      Get.snackbar("Felicitation", "Inscription reussie",
          colorText: kBackgroundColor, backgroundColor: Colors.green);
      return;
    }

    Get.snackbar("Erreur", "Erreur lors de l'inscription",
        colorText: kBackgroundColor, backgroundColor: Colors.red);
  }

}
