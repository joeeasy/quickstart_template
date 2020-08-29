import 'package:adiaha_tv/common/auth_header/auth_header.dart';
import 'package:adiaha_tv/common/buttons/primary_button.dart';
import 'package:adiaha_tv/common/inputs/custom_input_field.dart';
import 'package:adiaha_tv/common/scaffold_body.dart';
import 'package:adiaha_tv/screens/base_view.dart';
import 'package:adiaha_tv/view_models/auth/sign_up_view_model/sign_up_view_model.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<SignUpViewModel>(
      builder: (context, model, child) => Scaffold(
        body: ScaffordBody(
          child: Column(
            children: [
              AuthHeader(
                headerContent: 'Please enter your phone number to continue',
              ),
              Expanded(
                child: Container(),
              ),
              CustomInput(
                labelText: 'Enter Your Phone Number',
                keyboardType: TextInputType.phone,
              ),
              SizedBox(
                height: 24,
              ),
              PrimaryButton(
                buttonText: 'Next',
                onPress: model.gotoOtpScreen,
              ),
              Expanded(
                child: Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
