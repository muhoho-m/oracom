import "package:flutter/material.dart";

import "../../constants/name-definations/image_strings.dart";
import "../../constants/name-definations/text_strings.dart";
import "otp_screen.dart";

class PhoneForgetPassd extends StatelessWidget {
  const PhoneForgetPassd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // header image
            Container(
              height: 150,
              width: 150,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage(oraLogoImage))),
            ),
            // heading text title and subtitle
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Password Reset",
                  style: Theme.of(context).textTheme.headlineLarge,
                  textAlign: TextAlign.center,
                )
              ],
            ),
            // const SizedBox(height: 20.0),
            // Container(
            //   width: 200.0,
            //   // height: 250.0,
            //   decoration: const BoxDecoration(
            //     shape: BoxShape.circle,
            //     image: DecorationImage(image: AssetImage("assets/welcome/spash2.jpg"))
            //   ),
            // ),
            Text(
              "Enter phone number to reset password",
              style: Theme.of(context).textTheme.bodyMedium,

            ),
            Form(
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Enter new Password".toUpperCase(),
                  hintText: "Enter new Password",
                  prefixIcon: const Icon(Icons.fingerprint),
                  border: const OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const OtpScreen()));
                },
                child: Text("Reset Password".toUpperCase())
              )
            )
          ]

        )
      )
    );
  }
}