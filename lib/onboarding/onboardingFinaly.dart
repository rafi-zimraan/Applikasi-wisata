// ignore: file_names
import 'package:awesome_flutter/onboarding/buttonOnboarding.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Onboard_page extends StatelessWidget {
  const Onboard_page({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('lib/images/bgg.png'), fit: BoxFit.cover)),
          child: Container(
            padding: EdgeInsets.fromLTRB(
                55, MediaQuery.of(context).size.height * 0.2, 40, 0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Center(
                  child: Column(
                children: [
                  Image(
                    image: AssetImage(
                      'lib/images/car.jpg',
                    ),
                    height: 300,
                  ),
                  Container(
                    child: buttonOnboard(),
                  ),
                ],
              )),
            ]),
          )),
    );
  }
}
