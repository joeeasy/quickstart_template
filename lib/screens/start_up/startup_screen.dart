import 'package:adiaha_tv/app/constants/assets.dart';
import 'package:adiaha_tv/app/constants/colors.dart';
import 'package:adiaha_tv/common/buttons/primary_button.dart';
import 'package:adiaha_tv/common/scaffold_body.dart';
import 'package:adiaha_tv/screens/base_view.dart';
import 'package:adiaha_tv/view_models/start_up_view_model/startup_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class StartUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<StartUpViewModel>(
      builder: (context, model, child) {
        final themeData = Theme.of(context);
        return Scaffold(
          backgroundColor: Colors.black,
          body: Stack(
            children: [
              Container(
                width: Get.width,
                height: Get.height,
                child: Image.asset(
                  AppAssset.movie_background,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      AppColor.gradientColor.withOpacity(0.78),
                      AppColor.gradientColor.withOpacity(0.78),
                    ],
                  ),
                ),
              ),
              ScaffordBody(
                hasBackground: false,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            AppAssset.logo,
                            height: 14,
                          ),
                        ),
                        Flexible(
                          fit: FlexFit.tight,
                          child: Container(),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 8.0),
                          child: GestureDetector(
                            onTap: () {},
                            child: Text(
                              'Help',
                              style: themeData.textTheme.bodyText1,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            model.gotoLogin();
                          },
                          child: Text(
                            'Sign In',
                            style: themeData.textTheme.bodyText1,
                          ),
                        )
                      ],
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Text(
                      'Unlimted Naija Movies',
                      style: themeData.textTheme.headline1,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                      child: Text(
                        'Stream unilimted movies and shows on any of your device',
                        style: themeData.textTheme.bodyText2,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 69,
                    ),
                    PrimaryButton(
                      buttonText: 'GET STARTED',
                      onPress: () => model.gotoCreateAccount(),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    FlatButton(
                      onPressed: () {
                        model.gotoLogin();
                      },
                      child: Text(
                        'Login',
                        style: themeData.textTheme.bodyText1.copyWith(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 70,
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
