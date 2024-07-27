import "package:flutter/material.dart";
import "../../constants/name-definations/image_strings.dart";
import "otp_screen.dart";

class EmailForgetPassd extends StatelessWidget {
  const EmailForgetPassd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        padding: const EdgeInsets.all(30.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image: AssetImage(oraLogoImage))),
                  ),
                  // heading text title and subtitle
                  Text(
                    "Password Reset Page",
                    style: Theme.of(context).textTheme.headlineLarge,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Text(
                "Enter email address to change password.",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Form(
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Email".toUpperCase(),
                      hintText: "Email".toUpperCase(),
                      prefixIcon: const Icon(Icons.email_outlined),
                      border: const OutlineInputBorder()),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OtpScreen()));
                    },
                    child: Text(
                      "Reset password".toUpperCase(),
                      style: Theme.of(context).textTheme.bodyLarge,
                    )),
              ),
            ]),
      ),
    ));
  }
}
