import 'package:ecommerce/featuers/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:ecommerce/featuers/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (_) => const SplashView());
    case OnboardingView.routeName:
      return MaterialPageRoute(builder: (_) => const OnboardingView());
    default:
      return MaterialPageRoute(builder: (_) => const Scaffold());
  }
}
