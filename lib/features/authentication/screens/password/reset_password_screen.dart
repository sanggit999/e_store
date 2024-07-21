import 'package:e_store/common/widgets/success_screen/success_screen.dart';
import 'package:e_store/features/authentication/screens/login/login_screen.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:e_store/utils/helper/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(MySizes.defaultSpace),
        child: Column(
          children: [
            Image(
              image: const AssetImage(MyImages.verifyEmail),
              width: MyHelperFunctions.screenWidth(context) * 0.6,
            ),
            const SizedBox(height: MySizes.spaceBtwSections),
            Text(
              MyTexts.changeYourPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: MySizes.spaceBtwItem),
            Text(
              MyTexts.changeYourPasswordSubTitle,
              style: Theme.of(context).textTheme.labelLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: MySizes.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(MyTexts.done),
              ),
            ),
            const SizedBox(height: MySizes.spaceBtwItem),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                  onPressed: () {}, child: const Text(MyTexts.resendEmail)),
            ),
          ],
        ),
      ),
    );
  }
}
