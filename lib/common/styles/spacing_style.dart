import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class MySpacingStyle{
  static const EdgeInsets paddingWithAppBarHeight = EdgeInsets.only(
    top: MySizes.appBarHeight,
    bottom: MySizes.defaultSpace,
    left: MySizes.defaultSpace,
    right: MySizes.defaultSpace,
  );
}