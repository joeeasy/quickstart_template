import 'package:adiaha_tv/app/constants/route_names.dart';
import 'package:adiaha_tv/view_models/base_view_model.dart';
import 'package:get/route_manager.dart';

class LoginViewModel extends BaseViewModel {
  void gotoCreateAccount() {
    Get.toNamed(RouteName.SIGN_UP_SCREEN);
  }

  void gotoHome() {
    Get.toNamed(RouteName.HOME);
  }

  void gotResetPassword() {
    Get.toNamed(
      RouteName.RESET_PASSWORD,
    );
  }
}
