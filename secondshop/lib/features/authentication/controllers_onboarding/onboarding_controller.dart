import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get intance=> Get.find();

  /// Variables
   final pageController = PageController();
   Rx<int> currentPageIndex = 0.obs;
  /// Update Current Index When Page Scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  /// Jump to the Specific dot selected page.
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  /// Update Current Index & go to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      //  Get.to(LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

    /// Update Current index & jump to last page
    void skipPage() {
      currentPageIndex.value = 2;
      pageController.jumpToPage(2);
    }
  }