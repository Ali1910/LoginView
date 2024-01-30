import 'package:flutter/material.dart';

class CustomBottomContainer extends StatelessWidget {
  const CustomBottomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffE3EAF2),
      height: MediaQuery.of(context).size.height * 0.08,
    );
  }
}
