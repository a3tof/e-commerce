import 'package:dots_indicator/dots_indicator.dart';
import 'package:ecommerce/constants.dart';
import 'package:ecommerce/core/services/shared_preferences_singletone.dart';
import 'package:ecommerce/core/utils/app_color.dart';
import 'package:ecommerce/core/widgets/custom_button.dart';
import 'package:ecommerce/featuers/auth/presentation/views/login_view.dart';
import 'package:ecommerce/featuers/on_boarding/presentation/views/widgets/on_boarding_page_view.dart';
import 'package:flutter/material.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  late PageController pageController;
  var currentPage = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!.round();
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
        Expanded(
            child: OnboardingPageView(
          pageController: pageController,
        )),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColor.primaryColor,
            color: currentPage == 1
                ? AppColor.primaryColor
                : AppColor.secondaryColor,
          ),
        ),
        SizedBox(height: 29),
        Visibility(
          visible: currentPage == 1 ? true : false,
          maintainAnimation: true,
          maintainSize: true,
          maintainState: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: CustomButton(
              text: 'ابدأ الان',
              onPressed: () {
                Prefs.setBool(kIsOnBoardingViewSeen, true);
                Navigator.of(context).pushReplacementNamed(LoginView.routeName);
              },
            ),
          ),
        ),
        SizedBox(height: 43),
      ],
    );
  }
}
