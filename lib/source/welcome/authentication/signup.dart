import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:leo/source/constants/name-definations/text_strings.dart';
import 'package:leo/source/screens/user_screens/home_screen.dart';
import 'package:leo/source/welcome/authentication/model/user_model.dart';
import 'package:leo/source/welcome/controllers/signup_controller.dart';

import '../../constants/name-definations/image_strings.dart';
// import '../../screens/general_screens/company_brands.dart';

class OraSignup extends StatelessWidget {
  const OraSignup({super.key});

  @override
  Widget build(BuildContext context) {
    // call the signup controller
    final oraSUController = Get.put(OraSignupController());
    // form key
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 50.0, right: 20.0, left: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(oraLogoImage),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              Text(
                oraSignupPageText,
                style: Theme.of(context).textTheme.headlineLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20.0),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextField(
                      controller: oraSUController.oraName,
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.person_2_outlined),
                          labelText: oraNameInputText,
                          hintText: oraNameInputText,
                          border: OutlineInputBorder()),
                    ),
                    const SizedBox(height: 20.0),
                    TextField(
                      controller: oraSUController.oraEmail,
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.mail),
                          labelText: oraEmailInputText,
                          hintText: oraEmailInputText,
                          border: OutlineInputBorder()),
                    ),
                    const SizedBox(height: 20.0),
                    TextField(
                      controller: oraSUController.oraBrand,
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.add_business),
                          labelText: oraBrandInputText,
                          hintText: oraBrandInputText,
                          border: OutlineInputBorder()),
                    ),
                    const SizedBox(height: 20.0),
                    TextField(
                      controller: oraSUController.oraPhone,
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.numbers),
                          labelText: oraPhoneInputText,
                          hintText: oraPhoneInputText,
                          border: OutlineInputBorder()),
                    ),
                    const SizedBox(height: 20.0),
                    TextField(
                      controller: oraSUController.oraPassd,
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.fingerprint),
                          labelText: oraPassdInputText,
                          hintText: oraPassdInputText,
                          border: OutlineInputBorder()),
                    ),
                    // SizedBox(height: 20.0),
                    // TextField(
                    //   decoration: InputDecoration(
                    //         prefixIcon: Icon(Icons.fingerprint),
                    //         labelText: oraPassdRedoText,
                    //         hintText: oraPassdRedoText,
                    //         border: OutlineInputBorder()
                    //   ),
                    // ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => const OraCompanyBrands()));
                      if (_formKey.currentState!.validate()) {
                        // Get.put(OraSignupController.instance.oraRegisterMember(
                        //     oraSUController.oraEmail.text.trim(),
                        //     oraSUController.oraPassd.text.trim()));
                        // }
                        // },
                        // child: Text(
                        //   oraSignupButonText.toUpperCase(),
                        // style: Theme.of(context).textTheme.bodyLarge,
                        // using the model created to identify user
                        final User = OraUserModel(
                            fullName: oraSUController.oraName.text.trim(),
                            email: oraSUController.oraEmail.text.trim(),
                            brand: oraSUController.oraBrand.text.trim(),
                            phoneNo: oraSUController.oraPhone.text.trim(),
                            password: oraSUController.oraPassd.text.trim());
                        OraSignupController.instance.oraCreateUser(User);
                        // Get.to(() => const OraHomePage());
                      }
                    },
                    child: Text(oraSignupButonText.toUpperCase()),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
