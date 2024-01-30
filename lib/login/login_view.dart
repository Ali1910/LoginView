import 'package:firstapp/login/login_bottom_sheet.dart';
import 'package:firstapp/login/login_view_body.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: LoginViewBody(),
        bottomSheet: CustomBottomContainer(),
      ),
    );
  }
}
