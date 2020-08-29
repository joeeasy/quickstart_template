import 'package:adiaha_tv/common/auth_header/auth_header.dart';
import 'package:adiaha_tv/common/buttons/primary_button.dart';
import 'package:adiaha_tv/common/pin/custom_pin.dart';
import 'package:adiaha_tv/common/scaffold_body.dart';
import 'package:adiaha_tv/screens/base_view.dart';
import 'package:adiaha_tv/view_models/reset_password/reset_password_view_model.dart';
import 'package:flutter/material.dart';

class ConfirmPin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<ResetPasswordViewModel>(
      builder: (context, model, child) => Scaffold(
        body: ScaffordBody(
          child: Column(
            children: [
              AuthHeader(
                headerContent: 'Confrim OTP sent to +2347059972180',
              ),
              Expanded(child: Container()),
              PinInputField(
                boxLength: 4,
                autoFocus: true,
                onCodeChanged: () {},
                obscureText: true,
              ),
              SizedBox(
                height: 24,
              ),
              PrimaryButton(
                buttonText: 'Confirm Pin',
                onPress: () => model.createNewPind(),
              ),
              Expanded(child: Container()),
            ],
          ),
        ),
      ),
    );
  }
}
