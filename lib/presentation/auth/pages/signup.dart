import 'package:ecommerce/common/helper/navigator/app_navigator.dart';
import 'package:ecommerce/common/widgets/appbar/app_bar.dart';
import 'package:ecommerce/common/widgets/button/basic_app_button.dart';
import 'package:ecommerce/presentation/auth/pages/enter_password.dart';
import 'package:ecommerce/presentation/auth/pages/siginin.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

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
            _firstNameField(context),
            const SizedBox(
              height: 20,
            ),
            _lastNameField(context),
            const SizedBox(
              height: 20,
            ),
            _passwordField(context),
            const SizedBox(
              height: 20,
            ),
            _emailField(context),
            const SizedBox(
              height: 20,
            ),
            _continueButton(context),
            const SizedBox(
              height: 20,
            ),
            _createAccount(context)
          ],
        ),
      ),
    );
  }

  Widget _siginText(BuildContext context) {
    return const Text(
      'Create Account',
      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    );
  }

  Widget _firstNameField(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(hintText: 'FirstName'),
    );
  }

  Widget _lastNameField(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(hintText: 'LastName'),
    );
  }

  Widget _emailField(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(hintText: 'Email Address'),
    );
  }

  Widget _passwordField(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(hintText: 'Enter Password'),
    );
  }

  Widget _continueButton(BuildContext context) {
    return BasicAppButton(
        onPressed: () {
          AppNavigator.push(context, const EnterPasswordPage());
        },
        title: 'Continue');
  }

  Widget _createAccount(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        const TextSpan(
            text: "Do you have an Account? ",
            style: TextStyle(color: Colors.white)),
        TextSpan(
            text: 'Sigin',
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                AppNavigator.pushReplacement(context, const SigninPage());
              },
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold))
      ]),
    );
  }
}
