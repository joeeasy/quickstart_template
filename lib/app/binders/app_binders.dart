import 'package:adiaha_tv/view_models/start_up_view_model/startup_view_model.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

class AppBinder implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StartUpViewModel>(() => StartUpViewModel());
  }
}
