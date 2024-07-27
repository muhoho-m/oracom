import 'package:flutter/material.dart';
import 'package:leo/source/constants/name-definations/image_strings.dart';
import 'package:leo/source/constants/name-definations/text_strings.dart';

import '../../screens/user_screens/home_screen.dart';
import '../resseting/email_forget_passd.dart';
import '../resseting/phone_forget_password.dart';

class OraLogin extends StatelessWidget {
  const OraLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 100),
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  margin: const EdgeInsets.all(20.0),
                  width: 200,
                  height: 200,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(oraLogoImage),
                    ),
                  )),
              Text(
                oraSigninPageText,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Form(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.mail_outline_rounded),
                          labelText: oraEmailInputText,
                          hintText: oraEmailInputText,
                          border: OutlineInputBorder()),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.fingerprint),
                          labelText: oraPassdInputText,
                          hintText: oraPassdInputText,
                          border: OutlineInputBorder()),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const OraHomePage()));
                          },
                          child: Text(
                            oraSigninButonText.toUpperCase(),
                          ),
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          // giving the bottom sheep rounded edges
                          shape: RoundedRectangleBorder(

                              borderRadius: BorderRadius.circular(20.0)),
                          builder: (context) => Container(
                            height: 200,
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.start,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: double.infinity,
                                      child: OutlinedButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const EmailForgetPassd()),
                                            );
                                          },
                                          child: Text("Reset with email"
                                              .toUpperCase())),
                                    ),
                                    SizedBox(
                                      width: double.infinity,
                                      child: OutlinedButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const PhoneForgetPassd()),
                                            );
                                          },
                                          child: Text("Reset with phone"
                                              .toUpperCase())),
                                    ),
                                  ])),
                        );
                      },
                      child: const Align(
                        alignment: Alignment.centerRight,
                        child: Text(oraForgotPassdText),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
