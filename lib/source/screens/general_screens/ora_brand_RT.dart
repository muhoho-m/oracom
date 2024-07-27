// brand cummulative reports and to do lists view screen

import "package:flutter/material.dart";
import "package:leo/source/screens/user_screens/home_screen.dart";

class OraBrandPageReports extends StatelessWidget {
  final String brandName;
  final String brandImage;

  const OraBrandPageReports(
      {required this.brandName, required this.brandImage, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // leading: SizedBox(
          //   height: 20.0,
          //   child: Image(image: AssetImage(brandImage.toString())),
          // ),
          title: Text("$brandName Reports")),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const OraHomePage()));
                    },
                    child: Text(
                      "Oracom Personel",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ]),
          ),
        ),
      ),
      // const VerticalDivider(),
    );
  }
}
