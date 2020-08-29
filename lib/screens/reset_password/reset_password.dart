import 'package:adiaha_tv/common/auth_header/auth_header.dart';
import 'package:adiaha_tv/common/buttons/primary_button.dart';
import 'package:adiaha_tv/common/inputs/custom_input_field.dart';
import 'package:adiaha_tv/common/scaffold_body.dart';
import 'package:adiaha_tv/screens/base_view.dart';
import 'package:adiaha_tv/view_models/reset_password/reset_password_view_model.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<ResetPasswordViewModel>(
      builder: (context, model, child) {
        return Scaffold(
          body: ScaffordBody(
            child: Column(
              children: [
                AuthHeader(
                  headerContent: 'Enter your email address to continue',
                ),
                Expanded(child: Container()),
                CustomInput(
                  labelText: 'Email Address',
                ),
                SizedBox(
                  height: 24,
                ),
                PrimaryButton(
                  onPress: () => model.gotoConfirmPint(),
                  buttonText: 'Next',
                ),
                Expanded(child: Container())
              ],
            ),
          ),
        );
      },
    );
  }
}
