// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:scan_reader/core/resources/colors.dart';
import 'package:scan_reader/core/resources/screen_size.dart';

import '../resources/dimensions.dart';

Container BgGradientContainer({required BuildContext context, Widget? child}) {
  return Container(
    height: ScreenSize.height(context),
    width: ScreenSize.width(context),
    decoration: const BoxDecoration(gradient: AppColor.backgroundColorGradient),
    child: Padding(
      padding: EdgeInsets.all(Dimensions.containerPadding),
      child: child ?? const SizedBox.shrink(),
    ),
  );
}
