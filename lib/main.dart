import 'package:adiaha_tv/app/constants/colors.dart';
import 'package:adiaha_tv/app/constants/route_names.dart';
import 'package:adiaha_tv/app/route/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarBrightness: Brightness.dark));
  runApp(AiahaTv());
}

class AiahaTv extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Adiaha TV',
      initialRoute: RouteName.START_UP_SCREEN,
      getPages: routes,
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        brightness: Brightness.light,
        fontFamily: 'CeraPro',
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          headline1: TextStyle(
            color: AppColor.primaryColor,
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
          bodyText2: TextStyle(
              color: AppColor.primaryColor,
              fontWeight: FontWeight.w200,
              fontSize: 18),
        ),
      ),
    );
  }
}
