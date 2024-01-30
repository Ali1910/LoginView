import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomImageContainer extends StatelessWidget {
  const CustomImageContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.4,
      decoration: const BoxDecoration(
          color: Color(0xffE3EAF2),
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(40),
            bottomLeft: Radius.circular(40),
          )),
      child: Center(
        child: SvgPicture.asset('assets/images/OIP.svg'),
      ),
    );
  }
}
