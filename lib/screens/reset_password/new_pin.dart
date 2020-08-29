import 'package:adiaha_tv/common/auth_header/auth_header.dart';
import 'package:adiaha_tv/common/buttons/primary_button.dart';
import 'package:adiaha_tv/common/inputs/custom_input_field.dart';
import 'package:adiaha_tv/common/scaffold_body.dart';
import 'package:adiaha_tv/screens/base_view.dart';
import 'package:adiaha_tv/view_models/reset_password/reset_password_view_model.dart';
import 'package:flutter/material.dart';

class NewPin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<ResetPasswordViewModel>(
      builder: (context, model, child) => Scaffold(
        body: ScaffordBody(
          child: Column(
            children: [
              AuthHeader(
                headerContent: 'Create a new password for your account',
              ),
              Expanded(child: Container()),
              CustomInput(
                labelText: 'New Password',
                obscureText: true,
              ),
              SizedBox(
                height: 16,
              ),
              CustomInput(
                labelText: 'Confirm Password',
                obscureText: true,
              ),
              SizedBox(
                height: 16,
              ),
              PrimaryButton(
                buttonText: 'Create New Password',
                onPress: () => model.gotoLogin(),
              ),
              Expanded(child: Container())
            ],
          ),
        ),
      ),
    );
  }
}
