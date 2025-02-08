import 'package:ecommerce/featuers/on_boarding/presentation/views/widgets/on_boarding_view_body.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});
  static const routeName = 'onboarding';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: OnboardingViewBody()),
    );
  }
}
