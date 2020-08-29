import 'package:adiaha_tv/common/auth_header/auth_header.dart';
import 'package:adiaha_tv/common/buttons/primary_button.dart';
import 'package:adiaha_tv/common/inputs/custom_input_field.dart';
import 'package:adiaha_tv/common/scaffold_body.dart';
import 'package:adiaha_tv/screens/base_view.dart';
import 'package:adiaha_tv/view_models/auth/sign_up_view_model/sign_up_view_model.dart';
import 'package:flutter/material.dart';

class SignUpDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget sizeBox = SizedBox(height: 16);
    final theme = Theme.of(context);
    return BaseView<SignUpViewModel>(
      builder: (context, model, child) => Scaffold(
        body: ScaffordBody(
          child: Column(
            children: [
              AuthHeader(
                headerContent: 'Fill the form below to complete signup',
              ),
              SizedBox(
                height: 67,
              ),
              Form(
                  child: Column(
                children: [
                  CustomInput(
                    labelText: 'First Name',
                  ),
                  sizeBox,
                  CustomInput(
                    labelText: 'Lasr Name',
                  ),
                  sizeBox,
                  CustomInput(
                    labelText: 'Email',
                  ),
                  sizeBox,
                  CustomInput(
                    labelText: 'Password',
                    obscureText: true,
                  ),
                  sizeBox,
                  PrimaryButton(
                    buttonText: 'Create Account',
                    onPress: () => model.gotoSubscripton(),
                  ),
                  FlatButton(
                    onPressed: () => model.gotoLogin(),
                    child: Text(
                      "Already have an account? Login",
                      style: theme.textTheme.bodyText2.copyWith(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
