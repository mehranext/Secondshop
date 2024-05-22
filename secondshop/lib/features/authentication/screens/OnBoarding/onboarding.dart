import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:secondshop/features/authentication/controllers_onboarding/onboarding_controller.dart';
import 'package:secondshop/utils/constants/colors.dart';
import 'package:secondshop/utils/constants/image_string.dart';
import 'package:secondshop/utils/constants/sizes.dart';
import 'package:secondshop/utils/constants/text_string.dart';
import 'package:secondshop/utils/device/device_utility.dart';
import 'package:secondshop/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subtitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subtitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subtitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          ///skip Button
          const OnBoardingSkip(),

          ///Dot Navigation smooth page Indicator
          const OnBoardingDotNavigation(),

          ///circular button
          const OnBoardingCircular()
        ],
      ),
    );
  }
}

class OnBoardingCircular extends StatelessWidget {
  const OnBoardingCircular({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: (){},
        style: ElevatedButton.styleFrom(shape: const CircleBorder(),backgroundColor:dark? TColors.primary: Colors.black,elevation: 0),
        child: const Icon(CupertinoIcons.arrow_right),
      ),
      );
  }
}
class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.intance;
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight()+25,
        left: TSizes.defaultSpace,
        child: SmoothPageIndicator(count: 3,
            controller : controller.pageController,
            onDotClicked: controller.dotNavigationClick,
            effect:ExpandingDotsEffect(activeDotColor:dark ? TColors.light: TColors.dark,dotWidth: 13,dotHeight: 2)
        ),
    );
  }
}
class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned( top: TDeviceUtils.getAppBarHeight(),right:TSizes.defaultSpace ,child: TextButton(onPressed:()=> OnBoardingController.intance.skipPage(),child: const Text('Skip'),));
  }
}
class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        children: [
          Image(
              width: THelperFunctions.screenWidth() * 0.8,
              height: THelperFunctions.screenHeight() * 0.6,
              image: AssetImage(image
              ),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
