import 'package:firstapp/login/widget/custom_elevated_button.dart';
import 'package:firstapp/login/widget/custom_image_conatiner.dart';
import 'package:firstapp/login/widget/custom_login_text_form_feild.dart';
import 'package:firstapp/login/widget/custom_text.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomImageContainer(),
            const CustomText(),
            CustomLoginTextFormFeild(
              hint: 'Enter your email',
              prefix: true,
              suffix: false,
              onChanged: (String) {},
              validator: (String) {
                return '.';
              },
              prefixicon: Icons.email,
              onFieldSubmitted: (p0) {},
            ),
            CustomLoginTextFormFeild(
              hint: 'Enter your password',
              prefix: true,
              suffix: true,
              isobscure: true,
              suffixicon: Icons.remove_red_eye,
              onChanged: (String) {},
              validator: (String) {
                return '.';
              },
              onPressed: () {},
              prefixicon: Icons.lock,
              onFieldSubmitted: (p0) {},
            ),
            const CustomElevatedbutton(),
          ],
        ),
      ),
    );
  }
}
