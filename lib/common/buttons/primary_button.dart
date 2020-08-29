import 'package:adiaha_tv/app/constants/colors.dart';
import 'package:adiaha_tv/common/buttons/base_button.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key key,
    this.buttonText,
    this.onPress,
  }) : super(key: key);
  final String buttonText;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return BaseButton(
      color: AppColor.primaryColor,
      onPressed: () => onPress(),
      child: Text(buttonText,
          style: themeData.textTheme.bodyText1.copyWith(
            fontWeight: FontWeight.w500,
            color: Colors.black,
          )),
    );
  }
}