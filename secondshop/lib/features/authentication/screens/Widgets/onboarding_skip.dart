import 'package:flutter/material.dart';
import 'package:secondshop/features/authentication/controllers_onboarding/onboarding_controller.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned( top: TDeviceUtils.getAppBarHeight(),
        right:TSizes.defaultSpace ,
        child: TextButton(
          onPressed: ()=> OnBoardingController.intance.skipPage(),
          child: const Text(
              'Skip'),
        ),
    );
  }
}