import 'package:flutter/cupertino.dart';
import '../widgets/GetStartedScreen.dart';
import '../widgets/onboarding2Screen.dart';
import '../widgets/onboardingScreen.dart';

class PageViewState {

  int pageIndex = 0;

  PageController scroll = PageController(initialPage: 0);

  final pages = [
    const OnboardingScreen(),
    const Onboarding2Screen(),
    const GetStartedScreen()
  ];

}
