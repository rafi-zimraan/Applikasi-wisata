// ignore_for_file: use_build_context_synchronously

import 'package:awesome_flutter/colors/constan.dart';
import 'package:awesome_flutter/onboarding/onboarding_model.dart';
import 'package:awesome_flutter/splass/splash.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});
  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  int currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  _storeOnBoardInfo() async {
    int isViewed = 0;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('onboarding', isViewed);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: currentIndex % 2 == 0 ? AppColors.white : AppColors.blue,
      appBar: AppBar(
        backgroundColor:
            currentIndex % 2 == 0 ? AppColors.white : AppColors.blue,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () async {
              await _storeOnBoardInfo();
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const Splash()));
            },
            child: Text(
              "Skip",
              style: TextStyle(
                color:
                    currentIndex % 2 == 0 ? AppColors.black : AppColors.white,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: PageView.builder(
            itemCount: screen.length,
            controller: _pageController,
            physics: const NeverScrollableScrollPhysics(),
            onPageChanged: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(screen[index].img),
                  // ignore: sized_box_for_whitespace
                  Container(
                    height: 10.0,
                    child: ListView.builder(
                        itemCount: screen.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_, index) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 3.0),
                                width: currentIndex == index ? 25.0 : 8.0,
                                height: 8,
                                decoration: BoxDecoration(
                                  color: currentIndex == index
                                      ? AppColors.grey
                                      : AppColors.grey,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              )
                            ],
                          );
                        }),
                  ),
                  Text(
                    screen[index].text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 27.0,
                      fontWeight: FontWeight.bold,
                      color: index % 2 == 0 ? AppColors.blue : AppColors.white,
                    ),
                  ),
                  Text(
                    screen[index].desc,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: index % 2 == 0 ? AppColors.blue : AppColors.white,
                    ),
                  ),
                  InkWell(
                      onTap: () async {
                        if (index == screen.length - 1) {
                          await _storeOnBoardInfo();
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Splash()));
                        }

                        _pageController.nextPage(
                            duration: const Duration(microseconds: 300),
                            curve: Curves.bounceIn);
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 10.0),
                        decoration: BoxDecoration(
                          color:
                              index % 2 == 0 ? AppColors.blue : AppColors.white,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("Next",
                                style: TextStyle(
                                    fontSize: 16.0,
                                    color: index % 2 == 0
                                        ? AppColors.white
                                        : AppColors.blue)),
                            const SizedBox(width: 15.0),
                            Icon(
                              Icons.arrow_forward_sharp,
                              color: index % 2 == 0
                                  ? AppColors.white
                                  : AppColors.blue,
                            ),
                          ],
                        ),
                      ))
                ],
              );
            }),
      ),
    );
  }
}
