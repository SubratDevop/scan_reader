// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scan_reader/core/resources/screen_size.dart';
import 'package:scan_reader/core/widgets/back_button.dart';

class CustmAppBarWidget extends StatelessWidget {
  CustmAppBarWidget({super.key, this.onTapMenu});
  void Function()? onTapMenu;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: ScreenSize.width(context),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const BackButtonWidget(),
          GestureDetector(
            onTap: onTapMenu,
            child: SvgPicture.asset("assets/icons/menu.svg"),
          )
        ],
      ),
    );
  }
}
