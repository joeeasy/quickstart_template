import 'package:adiaha_tv/screens/base_view.dart';
import 'package:adiaha_tv/view_models/start_up_view_model/startup_view_model.dart';
import 'package:flutter/material.dart';

class StartUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<StartUpViewModel>(
      builder: (context, model, child) => Scaffold(
        body: Stack(
          children: [Image.asset('name')],
        ),
      ),
    );
  }
}
