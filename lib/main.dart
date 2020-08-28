import 'package:adiaha_tv/app/constants/route_names.dart';
import 'package:adiaha_tv/app/route/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(AiahaTv());

class AiahaTv extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Adiaha TV',
      initialRoute: RouteName.START_UP_SCREEN,
      getPages: routes,
    );
  }
}
