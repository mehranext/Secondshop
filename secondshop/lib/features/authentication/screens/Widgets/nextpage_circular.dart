import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:secondshop/features/authentication/controllers_onboarding/onboarding_controller.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';

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
        onPressed: ()=>OnBoardingController.intance.nextPage(),
        style: ElevatedButton.styleFrom(shape: const CircleBorder(),backgroundColor:dark? TColors.primary: Colors.black,elevation: 0),
        child: const Icon(CupertinoIcons.arrow_right),
      ),
    );
  }
}