import 'package:adiaha_tv/view_models/auth/login_view_model/login_view_model.dart';
import 'package:adiaha_tv/view_models/auth/sign_up_view_model/sign_up_view_model.dart';
import 'package:adiaha_tv/view_models/home/home_view_model.dart';
import 'package:adiaha_tv/view_models/reset_password/reset_password_view_model.dart';
import 'package:adiaha_tv/view_models/start_up_view_model/startup_view_model.dart';
import 'package:adiaha_tv/view_models/viewing/watching_view_model.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

class AppBinder implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StartUpViewModel>(() => StartUpViewModel());
    Get.lazyPut<LoginViewModel>(() => LoginViewModel());
    Get.lazyPut<SignUpViewModel>(() => SignUpViewModel());
    Get.lazyPut<HomeViewModel>(() => HomeViewModel());
    Get.lazyPut<ViewingViewModel>(() => ViewingViewModel());
    Get.lazyPut<ResetPasswordViewModel>(() => ResetPasswordViewModel());
  }
}
