import 'package:e_store/common/styles/spacing_style.dart';
import 'package:e_store/common/widgets/login_signup/form_divider.dart';
import 'package:e_store/common/widgets/login_signup/social_buttons.dart';
import 'package:e_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:e_store/features/authentication/screens/login/widgets/login_header.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: MySpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              LoginHeader(),
              LoginForm(),
              FormDivider(dividerText: MyTexts.orSignInWith),
              SizedBox(height: MySizes.spaceBtwSections),
              SocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
