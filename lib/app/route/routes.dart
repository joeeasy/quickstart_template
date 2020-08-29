import 'package:adiaha_tv/app/binders/app_binders.dart';
import 'package:adiaha_tv/app/constants/route_names.dart';
import 'package:adiaha_tv/screens/auth_screen/login/login_screen.dart';
import 'package:adiaha_tv/screens/auth_screen/sign_up/otp_screen.dart';
import 'package:adiaha_tv/screens/auth_screen/sign_up/sign_up_start_screen.dart';
import 'package:adiaha_tv/screens/auth_screen/sign_up/signup_details.dart';
import 'package:adiaha_tv/screens/movie_home/movie_home_screen.dart';
import 'package:adiaha_tv/screens/reset_password/confirm_pin.dart';
import 'package:adiaha_tv/screens/reset_password/new_pin.dart';
import 'package:adiaha_tv/screens/reset_password/reset_password.dart';
import 'package:adiaha_tv/screens/start_up/startup_screen.dart';
import 'package:adiaha_tv/screens/subscription/subscription.dart';
import 'package:adiaha_tv/screens/watching/watch_screen.dart';
import 'package:get/get.dart';

List<GetPage> routes = <GetPage>[
  GetPage(
    name: RouteName.START_UP_SCREEN,
    page: () => StartUpScreen(),
    binding: AppBinder(),
  ),
  GetPage(
    name: RouteName.LOGIN_SCREEN,
    page: () => LoginScreen(),
    binding: AppBinder(),
  ),
  GetPage(
    name: RouteName.SIGN_UP_SCREEN,
    page: () => SignUpScreen(),
    binding: AppBinder(),
  ),
  GetPage(
    name: RouteName.OTP_SCREEN,
    page: () => OTPScreen(),
    binding: AppBinder(),
  ),
  GetPage(
    name: RouteName.CREATE_ACCOUNT_DETAIL_SCREEN,
    page: () => SignUpDetails(),
    binding: AppBinder(),
  ),
  GetPage(
    name: RouteName.SUBSCRIPTION_SCREEN,
    page: () => SubscriptionScreen(),
    binding: AppBinder(),
  ),
  GetPage(
    name: RouteName.HOME,
    page: () => MovieHomeScreen(),
    binding: AppBinder(),
  ),
  GetPage(
    name: RouteName.WATCH_SCREEN,
    page: () => WatchScreen(),
    binding: AppBinder(),
  ),
  GetPage(
    name: RouteName.RESET_PASSWORD,
    page: () => ResetPassword(),
    binding: AppBinder(),
  ),
  GetPage(
    name: RouteName.CONFIRM_PIN,
    page: () => ConfirmPin(),
    binding: AppBinder(),
  ),
  GetPage(
    name: RouteName.CREATE_NEW_PIN,
    page: () => NewPin(),
    binding: AppBinder(),
  ),
];
