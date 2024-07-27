import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:leo/source/screens/user_screens/home_screen.dart';
import 'package:leo/source/welcome/controllers/auth_repo/auth_exceptions.dart';
import 'package:leo/source/welcome/onboarding/welcome_screen.dart';

class OraAuthRepo extends GetxController {
  static OraAuthRepo get instance => Get.find();

  // variables for working with firebase auth
  final _oraAuth = FirebaseAuth.instance;
  late final Rx<User?> oraFirebaseUser; 
  // check whether user is logged in or nuh

  
  _oraSetInitialScreen(User? user) {
      user == null ? Get.offAll(() => const LeKaribu()) : Get.offAll(() => const OraHomePage());
    }

  // on app open, if person is already signed in, take to home 
  // otherwise take to login/signup screen
  @override
  void onReady() {
    oraFirebaseUser = Rx<User?>(_oraAuth.currentUser);
    oraFirebaseUser.bindStream(_oraAuth.userChanges());
    ever(oraFirebaseUser, _oraSetInitialScreen); 
  }

  // create a user with email and password
  Future<void> oraCreateUserWithEmailAndPassword(
    String oraEmail, String oraPassd
  ) async {
    try {
      await _oraAuth.createUserWithEmailAndPassword(email: oraEmail, password: oraPassd);
      oraFirebaseUser.value != null ? Get.offAll(() => const OraHomePage()) : Get.to(() => const LeKaribu());
    } on FirebaseAuthException catch(e){
      final ex = OraSigupWithEmailPassdFailure.code(e.code);
      print("Auth Exception ${ex.message}");
      throw ex;
    }
    catch(_){
      const ex = OraSigupWithEmailPassdFailure();
      print("Exception ${ex.message}");
      throw ex;
    }
    
  }

  // signin a user with email and password
  Future<void> oraLoginUserWithEmailAndPassword(
    String oraEmail, String oraPassd
  ) async {
    try {
      await _oraAuth.signInWithEmailAndPassword(email: oraEmail, password: oraPassd);
    } on FirebaseAuthException catch(e){}
    catch(_){} 
  }

  // logout
  Future<void> oraLogout() async => await _oraAuth.signOut();

}