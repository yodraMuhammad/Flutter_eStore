import "package:ecommerce/features/authetincation/controllers/onboarding/onboarding_controller.dart";
import "package:ecommerce/utils/constans/sizes.dart";
import "package:ecommerce/utils/device/device_utility.dart";
import "package:flutter/material.dart";

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TDevicesUtils.getAppbarHeight(),
        right: TSizes.defaultSpace,
        child: TextButton(
          onPressed: () => OnBoardingController.instance.skipPage(),
          child: const Text('Skip'),
        ));
  }
}
