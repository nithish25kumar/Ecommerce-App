import 'package:ecommerce/common/helper/navigator/app_navigator.dart';
import 'package:ecommerce/common/widgets/appbar/app_bar.dart';
import 'package:ecommerce/common/widgets/button/basic_app_button.dart';
import 'package:ecommerce/presentation/auth/pages/forgot_password.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class EnterPasswordPage extends StatelessWidget {
  const EnterPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _siginText(context),
            const SizedBox(
              height: 20,
            ),
            _passwordField(context),
            const SizedBox(
              height: 20,
            ),
            _continueButton(),
            const SizedBox(
              height: 20,
            ),
            _forgotAccount(context)
          ],
        ),
      ),
    );
  }

  Widget _siginText(BuildContext context) {
    return const Text(
      'Sign in',
      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    );
  }

  Widget _passwordField(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(hintText: 'Enter Password'),
    );
  }

  Widget _continueButton() {
    return BasicAppButton(onPressed: () {}, title: 'Continue');
  }

  Widget _forgotAccount(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
            text: "Forgot Passsword? ", style: TextStyle(color: Colors.white)),
        TextSpan(
            text: 'Reset',
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                AppNavigator.push(context, const ForgotPasswordPage());
              },
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))
      ]),
    );
  }
}
