import 'package:flutter/material.dart';
import 'package:leo/source/constants/name-definations/image_strings.dart';
import 'package:leo/source/constants/name-definations/text_strings.dart';
import 'package:leo/source/welcome/authentication/signup.dart';

import '../authentication/login.dart';

class LeKaribu extends StatelessWidget {
  const LeKaribu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(20.0),
          alignment: Alignment.center,
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 200.0,
                height: 200.0,
                padding: const EdgeInsets.only(top: 50.0),
                alignment: Alignment.center,
          
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage(oraLogoImage),)
                ),
              ),
              Text(oraWelcomeTitle, 
              style: Theme.of(context).textTheme.headlineMedium),
              
              Text(oraWelcomeSubtitle, 
              style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const OraLogin(),),);
                    },
                    child: Text(oraSigninButonText, style: Theme.of(context).textTheme.bodyLarge),
          
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const OraSignup(),),);
                    },
                    child: Text(oraSignupButonText, style: Theme.of(context).textTheme.bodyLarge),
          
                  ),
                ]
              )
            ]
          ),
        ),
      ),
    );
  }
}