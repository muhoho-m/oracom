import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:leo/source/welcome/controllers/auth_repo/auth_repo.dart';
import 'package:leo/source/welcome/controllers/database_repo/database_interaction.dart';

import '../../screens/user_screens/home_screen.dart';
import '../authentication/model/user_model.dart';

class OraSignupController extends GetxController {
  // create a controller for the sign up screen
  static OraSignupController get instance => Get.find();

  // textfield controllers to get data from input
  final oraName = TextEditingController();
  final oraEmail = TextEditingController();
  final oraBrand = TextEditingController();
  final oraPhone = TextEditingController();
  final oraPassd = TextEditingController();

  // call user repository to create user
  final userRepository = Get.put(OraDatabaseRepository());

  // create a user
  Future<void> oraCreateUser(OraUserModel user) async {
    await userRepository.createUser(user);
    oraRegisterMember(user.email, user.password);
    Get.to(() => const OraHomePage());
    // Navigator.push(context, MaterialPageRoute(builder: (context) => const OraHomePage(),));
  }

  // function for on-press
  void oraRegisterMember(String oraEmail, String oraPassd) {
    OraAuthRepo.instance.oraCreateUserWithEmailAndPassword(oraEmail, oraPassd);
  }


}