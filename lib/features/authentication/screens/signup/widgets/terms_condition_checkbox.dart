import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            height: MySizes.defaultSpace,
            width: MySizes.defaultSpace,
            child: Checkbox(
                value: true, onChanged: (value) => {})),
        const SizedBox(width: MySizes.spaceBtwItem),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: '${MyTexts.iAgreeTo} ',
                    style:
                    Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: '${MyTexts.privacyPolicy} ',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .apply(
                      color: MyColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: MyColors.primary,
                    )),
                TextSpan(
                    text: '${MyTexts.and} ',
                    style:
                    Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: '${MyTexts.termsOfUse} ',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .apply(
                      color: MyColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: MyColors.primary,
                    )),
              ],
            ),
          ),
        ),
      ],
    );
  }
}