import 'package:e_store/features/authentication/screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingCubit extends Cubit<int> {
  OnboardingCubit() : super(0);

  final pageController = PageController();
  int currentPageIndex = 0;

  void updatePageIndicator(index) {
    currentPageIndex = index;
  }

  void dotNavigationClick(index) {
    currentPageIndex = index;
    pageController.jumpToPage(index);
  }

  void nextPage(BuildContext context) {
    if (currentPageIndex == 2) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const LoginScreen()),
          (route) => false);
    } else {
      int page = currentPageIndex + 1;
      pageController.jumpToPage(page);
    }
  }

  void skipPage(BuildContext context) {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
            (route) => false);
  }
}
