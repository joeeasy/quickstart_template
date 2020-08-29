import 'package:adiaha_tv/app/constants/route_names.dart';
import 'package:adiaha_tv/view_models/base_view_model.dart';
import 'package:get/route_manager.dart';

class StartUpViewModel extends BaseViewModel {
  void gotoLogin() {
    Get.toNamed(RouteName.LOGIN_SCREEN);
  }

  void gotoCreateAccount() {
    Get.toNamed(RouteName.SIGN_UP_SCREEN);
  }
}
