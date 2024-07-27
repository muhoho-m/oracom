import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:leo/source/welcome/controllers/auth_repo/auth_repo.dart';
import "package:leo/source/welcome/onboarding/welcome_screen.dart";
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  // innitialize firebase
  WidgetsFlutterBinding.ensureInitialized();
  
  Firebase.initializeApp().then((value) => Get.put(OraAuthRepo()));
  // options: DefaultFirebaseOptions.currentPlatform
  runApp(const Leo());
} 

class Leo extends StatelessWidget {
  const Leo({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "oracom",
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.system,
      home: const LeKaribu(),
    );
  }

}

