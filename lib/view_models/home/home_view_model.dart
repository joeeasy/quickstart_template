import 'package:adiaha_tv/app/constants/route_names.dart';
import 'package:adiaha_tv/view_models/base_view_model.dart';
import 'package:get/route_manager.dart';

class HomeViewModel extends BaseViewModel {
  void gotoVideoDetails() {
    Get.toNamed(RouteName.WATCH_SCREEN);
  }
}
