import 'package:adiaha_tv/app/constants/route_names.dart';
import 'package:adiaha_tv/view_models/base_view_model.dart';
import 'package:flutter/foundation.dart';
import 'package:get/route_manager.dart';

class SignUpViewModel extends BaseViewModel {
  void gotoOtpScreen() {
    Get.toNamed(RouteName.OTP_SCREEN);
  }

  void gotoCreateAccountDetails() {
    Get.toNamed(RouteName.CREATE_ACCOUNT_DETAIL_SCREEN);
  }

  void handlePinChange(String event) {
    debugPrint(event);
  }

  void gotoLogin() {
    Get.toNamed(RouteName.LOGIN_SCREEN);
  }

  void gotoSubscripton() {
    Get.toNamed(
      RouteName.SUBSCRIPTION_SCREEN,
    );
  }

  void gotoMovieHome() {
    Get.toNamed(RouteName.HOME);
  }
}
