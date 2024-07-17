import 'package:e_store/common/widgets/login_signup/form_divider.dart';
import 'package:e_store/common/widgets/login_signup/social_buttons.dart';
import 'package:e_store/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(MyTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: MySizes.spaceBtwSections),
              const SignupForm(),
              const SizedBox(height: MySizes.spaceBtwSections),
              const FormDivider(dividerText: MyTexts.orSignUpWith),
              const SizedBox(height: MySizes.spaceBtwSections),
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
