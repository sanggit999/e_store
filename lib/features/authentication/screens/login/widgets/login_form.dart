import 'package:e_store/features/authentication/screens/signup/signup_screen.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: MySizes.spaceBtwSections),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                labelText: MyTexts.email,
              ),
            ),
            const SizedBox(height: MySizes.spaceBtwInputField),
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline),
                  labelText: MyTexts.password,
                  suffixIcon: Icon(Iconsax.eye_slash)),
            ),
            const SizedBox(height: MySizes.spaceBtwInputField / 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(MyTexts.rememberMe),
                  ],
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(MyTexts.forgetPassword)),
              ],
            ),
            const SizedBox(height: MySizes.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {}, child: const Text(MyTexts.signIn)),
            ),
            const SizedBox(height: MySizes.spaceBtwItem),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignupScreen()));
                  },
                  child: const Text(MyTexts.createAccount)),
            ),
          ],
        ),
      ),
    );
  }
}
