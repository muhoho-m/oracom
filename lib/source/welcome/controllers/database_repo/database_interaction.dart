// this file contains all controllers for user interaction with the database

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

import '../../authentication/model/user_model.dart';

class OraDatabaseRepository extends GetxController {
  static OraDatabaseRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  // crease user
  createUser(OraUserModel user) async {
    await _db.collection("Users").add(user.toJson()).whenComplete(
        () => Get.snackbar("Success", "Account created successfully.",
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.blueAccent,
        colorText: Colors.green)
    )
    .catchError((error, stackTrace) {
      Get.snackbar("Error", "$error.toString()",
      snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.blueAccent,
          colorText: Colors.green);
          print(error.toString());
    })
    ;
  }
}