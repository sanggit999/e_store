import 'package:e_store/features/authentication/screens/signup/widgets/terms_condition_checkbox.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                        labelText: MyTexts.firstName,
                        prefixIcon: Icon(Icons.person_outline)),
                  )),
              const SizedBox(
                width: MySizes.spaceBtwInputField,
              ),
              Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                        labelText: MyTexts.lastName,
                        prefixIcon: Icon(Icons.person_outline)),
                  )),
            ],
          ),
          const SizedBox(height: MySizes.spaceBtwInputField),
          TextFormField(
            decoration: const InputDecoration(
                labelText: MyTexts.username,
                prefixIcon: Icon(Icons.person_pin_outlined)),
          ),
          const SizedBox(height: MySizes.spaceBtwInputField),
          TextFormField(
            decoration: const InputDecoration(
                labelText: MyTexts.email,
                prefixIcon: Icon(Icons.email_outlined)),
          ),
          const SizedBox(height: MySizes.spaceBtwInputField),
          TextFormField(
            decoration: const InputDecoration(
                labelText: MyTexts.phoneNumber,
                prefixIcon: Icon(Icons.call_outlined)),
          ),
          const SizedBox(height: MySizes.spaceBtwInputField),
          TextFormField(
            decoration: const InputDecoration(
                labelText: MyTexts.password,
                prefixIcon: Icon(Icons.lock_outline),
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          const SizedBox(height: MySizes.spaceBtwSections),
          const TermsAndCondition(),
          const SizedBox(height: MySizes.spaceBtwSections),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(MyTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}

