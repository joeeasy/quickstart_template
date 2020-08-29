import 'package:adiaha_tv/app/constants/assets.dart';
import 'package:adiaha_tv/app/constants/colors.dart';
import 'package:adiaha_tv/common/auth_header/auth_header.dart';
import 'package:adiaha_tv/common/buttons/button_accent.dart';
import 'package:adiaha_tv/common/scaffold_body.dart';
import 'package:adiaha_tv/model/subscription.dart';
import 'package:adiaha_tv/screens/base_view.dart';
import 'package:adiaha_tv/view_models/auth/sign_up_view_model/sign_up_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class SubscriptionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return BaseView<SignUpViewModel>(
      builder: (context, model, widget) => Scaffold(
        body: ScaffordBody(
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
              SizedBox(
                height: 24,
              ),
              AuthHeader(
                canGoBack: false,
                headerText: 'Subscription',
                headerContent: 'Select a plan to start watching',
              ),
              SizedBox(
                height: 67,
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: subscriptions.length,
                  itemBuilder: (context, index) => Container(
                    margin: EdgeInsets.only(right: 24),
                    decoration: BoxDecoration(
                        color: AppColor.primaryColor,
                        borderRadius: BorderRadius.circular(
                          8.0,
                        )),
                    width: Get.mediaQuery.size.width * .7,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(children: [
                            TextSpan(
                              text: '₦${subscriptions[index].price}',
                              style: themeData.textTheme.headline1.copyWith(
                                color: Color(
                                  0xff5F646F,
                                ),
                              ),
                            ),
                            TextSpan(
                              text: '/${subscriptions[index].duration}Months',
                              style: themeData.textTheme.bodyText2.copyWith(
                                  color: Color(
                                    0xff5F646F,
                                  ),
                                  fontWeight: FontWeight.w500),
                            )
                          ]),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          '${subscriptions[index].description}',
                          textAlign: TextAlign.center,
                          style: themeData.textTheme.bodyText1.copyWith(
                              color: Color(0xff5F646F),
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 40,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              AccentButton(
                buttonText: 'Continue',
                onPress: () => model.gotoMovieHome(),
              ),
              Expanded(child: Container())
            ],
          ),
        ),
      ),
    );
  }
}
