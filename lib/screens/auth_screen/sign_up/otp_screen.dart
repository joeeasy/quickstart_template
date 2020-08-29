import 'package:adiaha_tv/common/auth_header/auth_header.dart';
import 'package:adiaha_tv/common/buttons/primary_button.dart';
import 'package:adiaha_tv/common/pin/custom_pin.dart';
import 'package:adiaha_tv/common/scaffold_body.dart';
import 'package:adiaha_tv/screens/base_view.dart';
import 'package:adiaha_tv/view_models/auth/sign_up_view_model/sign_up_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class OTPScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BaseView<SignUpViewModel>(
      builder: (context, model, child) => Scaffold(
        body: ScaffordBody(
          child: Column(
            children: [
              AuthHeader(
                headerContent: 'Enter the code sent to +2347059972180',
              ),
              Expanded(child: Container()),
              PinInputField(
                obscureText: true,
                boxLength: 4,
                onCodeChanged: (event) => model.handlePinChange(event),
              ),
              SizedBox(
                height: 104,
              ),
              PrimaryButton(
                buttonText: 'Verify',
                onPress: () => model.gotoCreateAccountDetails(),
              ),
              FlatButton(
                onPressed: () =>
                    Get.rawSnackbar(message: 'OTP has been resent'),
                child: Text(
                  "Resend Code",
                  style: theme.textTheme.bodyText2.copyWith(
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Expanded(child: Container()),
            ],
          ),
        ),
      ),
    );
  }
}
