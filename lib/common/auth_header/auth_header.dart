import 'package:adiaha_tv/app/constants/assets.dart';
import 'package:adiaha_tv/app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({
    Key key,
    this.canGoBack = true,
    this.headerText = 'Headertext',
    this.headerContent = 'header content',
  }) : super(key: key);
  final bool canGoBack;
  final String headerText;
  final String headerContent;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        canGoBack
            ? Container(
                margin: EdgeInsets.only(bottom: 24),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () => Get.back(),
                      child: SvgPicture.asset(
                        AppAssset.back_icon,
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          AppAssset.logo,
                          height: 26,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : Container(),
        (!canGoBack)
            ? Container(
                margin: EdgeInsets.only(bottom: 8),
                child: Text(
                  headerText,
                  style: theme.headline1.copyWith(fontWeight: FontWeight.w500),
                ),
              )
            : Container(),
        Text(
          headerContent,
          style: theme.bodyText2.copyWith(
            color: AppColor.textSecondary,
          ),
        )
      ],
    );
  }
}
