import 'package:adiaha_tv/app/binders/app_binders.dart';
import 'package:adiaha_tv/app/constants/route_names.dart';
import 'package:adiaha_tv/screens/start_up/startup_screen.dart';
import 'package:get/get.dart';

List<GetPage> routes = <GetPage>[
  GetPage(
    name: RouteName.START_UP_SCREEN,
    page: () => StartUpScreen(),
    binding: AppBinder(),
  ),
];
