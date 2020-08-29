import 'package:adiaha_tv/app/constants/colors.dart';
import 'package:flutter/material.dart';

class BaseButton extends StatelessWidget {
  const BaseButton({
    Key key,
    @required this.onPressed,
    this.color = AppColor.primaryColor,
    this.textColor = AppColor.primaryColorDark,
    this.child = const Text('Default Button'),
    this.disableColor,
    this.isDisabled = false,
    this.width = double.infinity,
    this.height = 50,
  }) : super(key: key);

  final Function onPressed;
  final Color color;
  final Color textColor;
  final Widget child;
  final Color disableColor;
  final bool isDisabled;
  final double width;
  final double height;

//  final Color

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: RaisedButton(
        key: key,
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 16,
        ),
        elevation: 0.0,
        focusElevation: 0,
        highlightElevation: 1,
        hoverElevation: 1,
        disabledTextColor: disableColor,
        disabledColor: disableColor,
        disabledElevation: 0.0,
        onPressed: isDisabled ? null : () => onPressed(),
        color: color,
        textColor: textColor,
        child: child,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: BorderSide.none,
        ),
      ),
    );
  }
}
