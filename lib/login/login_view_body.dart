import 'package:firstapp/login/widget/custom_elevated_button.dart';
import 'package:firstapp/login/widget/custom_image_conatiner.dart';
import 'package:firstapp/login/widget/custom_login_text_form_feild.dart';
import 'package:firstapp/login/widget/custom_text.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomImageContainer(),
          CustomText(),
          CustomLoginTextFormFeild(),
          CustomLoginTextFormFeild(),
          CustomElevatedbutton(),
        ],
      ),
    );
  }
}
