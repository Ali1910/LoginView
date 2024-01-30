import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 55, right: 50, top: 40),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'Login',
          style: TextStyle(
            color: Color(0xff6D62DB),
            fontSize: 32,
          ),
        ),
      ),
    );
  }
}
