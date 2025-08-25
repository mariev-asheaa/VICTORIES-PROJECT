import 'package:flutter/material.dart';
import 'package:hykaity/core/Utils/Constants.dart';
import 'package:hykaity/features/Onboarding/presentation/widgets/Onboarding_PageView.dart';

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({super.key});

  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentPageIndex = pageController.page!.round();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnboardingPageview(pageController: pageController)),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(3, (index) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: 18,
              height: 9,
              decoration: BoxDecoration(
                color: currentPageIndex == index
                    ? kPrimaryColor : Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(5),
              ),
            );
          }),
        ),
        SizedBox(height: 58,)
      ],
    );
  }
}
