import 'package:adiaha_tv/common/auth_header/auth_header.dart';
import 'package:adiaha_tv/common/buttons/primary_button.dart';
import 'package:adiaha_tv/common/inputs/custom_input_field.dart';
import 'package:adiaha_tv/common/scaffold_body.dart';
import 'package:adiaha_tv/screens/base_view.dart';
import 'package:adiaha_tv/view_models/auth/login_view_model/login_view_model.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BaseView<LoginViewModel>(
      builder: (context, model, child) => Scaffold(
        resizeToAvoidBottomInset: false,
        body: ScaffordBody(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              AuthHeader(
                headerContent: 'Login to access your account',
              ),
              Expanded(child: Container()),
              CustomInput(
                labelText: 'Email Address',
              ),
              SizedBox(height: 16),
              CustomInput(
                labelText: 'Password',
                obscureText: true,
              ),
              SizedBox(
                height: 24,
              ),
              PrimaryButton(
                buttonText: 'Sign In',
                onPress: () => model.gotoHome(),
              ),
              SizedBox(
                height: 37,
              ),
              FlatButton(
                onPressed: () => model.gotoCreateAccount(),
                child: Text(
                  "Don't have an Account? Sign Up",
                  style: theme.textTheme.bodyText2.copyWith(
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Expanded(child: Container()),
              FlatButton(
                onPressed: () => model.gotResetPassword(),
                child: Text(
                  "Forgot Password? Reset",
                  style: theme.textTheme.bodyText2.copyWith(
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              )
            ],
          ),
        ),
      ),
    );
  }
}
