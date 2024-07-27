 import "package:flutter/material.dart";
 import "package:flutter_otp_text_field/flutter_otp_text_field.dart";
import "package:leo/source/screens/user_screens/home_screen.dart";

import "../../constants/name-definations/image_strings.dart";


 class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            // width: Media
            alignment: Alignment.center,

          // padding: EdgeInsets.only(top: 60.4),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
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
              Text("Enter Otp Code", style: Theme.of(context).textTheme.bodyLarge,),
              OtpTextField(
                numberOfFields: 6,
                fillColor: Colors.blueAccent,
                filled: true,
                // get user input
                onSubmit: (code) {print("Otp is $code ");},
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const OraHomePage()));
                  },
                  child: Text("Next", style: Theme.of(context).textTheme.bodyLarge),
                ),
              )
            ],
          )
                ),
        ))
    );
  }
 }