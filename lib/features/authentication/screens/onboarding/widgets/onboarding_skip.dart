import 'package:e_store/features/authentication/cubit/onboarding_cubit.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:e_store/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: MySizes.defaultSpace,
      top: MyDeviceUtils.getAppBarHeight(),
      child: TextButton(
        onPressed: () {
          context.read<OnboardingCubit>().skipPage(context);
        },
        child: Text(
          MyTexts.skip,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
