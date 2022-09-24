import 'package:dogphy/utils/colors.dart';
import 'package:dogphy/utils/images.dart';
import 'package:dogphy/utils/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;

  List<String> texts = [
    AppTexts.txt1,
    AppTexts.txt2,
    AppTexts.txt3,
  ];

  List<String> images = [
    AppImages.ob1,
    AppImages.ob2,
    AppImages.ob3,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(images[currentIndex]),
            const SizedBox(height: 80),
            Text(
              texts[currentIndex],
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 200),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < images.length; i++)
                  i == currentIndex
                      ? circleIndicator(true)
                      : circleIndicator(false)
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                currentIndex == 2
                    ? const Center()
                    : TextButton(
                        onPressed: () {
                          setState(() => currentIndex = 2);
                        },
                        child: Text(
                          'SKIP',
                          style: TextStyle(
                            color: AppColor.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                TextButton(
                  onPressed: () {
                    if (currentIndex == 2) {
                      Navigator.pushReplacementNamed(context, '/home');
                    } else {
                      setState(() => currentIndex++);
                    }
                  },
                  child: Text(
                    currentIndex == 2 ? 'GET STARTED' : 'NEXT',
                    style: TextStyle(
                      color: AppColor.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget circleIndicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      height: 10,
      width: 10,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: isActive ? AppColor.primary : Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }
}
