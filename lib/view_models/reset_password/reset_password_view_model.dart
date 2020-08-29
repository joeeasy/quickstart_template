import 'package:adiaha_tv/app/constants/route_names.dart';
import 'package:adiaha_tv/view_models/base_view_model.dart';
import 'package:get/route_manager.dart';

class ResetPasswordViewModel extends BaseViewModel {
  void gotoConfirmPint() {
    Get.toNamed(RouteName.CONFIRM_PIN);
  }

  void createNewPind() {
    Get.toNamed(RouteName.CREATE_NEW_PIN);
  }

  void gotoLogin() {
    Get.toNamed(RouteName.LOGIN_SCREEN);
  }
}
