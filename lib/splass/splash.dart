import 'package:awesome_flutter/onboarding/onboardingFinaly.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

// Splash Navigator animation

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1500), () {
      Navigator.pushReplacement(
          context,
          PageRouteBuilder(
              pageBuilder: (context, animation1, animation2) =>
                  const Onboard_page(),
              transitionDuration: const Duration(milliseconds: 150),
              transitionsBuilder: (context, animation1, animation2, child) {
                return ScaleTransition(
                  scale: animation1,
                  child: child,
                );
              }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 34, 33, 33),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('lib/images/bgg.png'), fit: BoxFit.cover)),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Center(
            child: Image(
              image: AssetImage(
                'lib/images/img-2.png',
              ),
              height: 200,
            ),
          ),
          if (defaultTargetPlatform == TargetPlatform.android)
            const CupertinoActivityIndicator(
              color: Color.fromARGB(255, 255, 255, 255),
              radius: 20,
              animating: true,
            )
          else
            const CircularProgressIndicator(
              color: Colors.amber,
            )
        ]),
      ),
    );
  }
}
