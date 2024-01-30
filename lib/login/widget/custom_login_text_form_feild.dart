import 'package:flutter/material.dart';

class CustomLoginTextFormFeild extends StatelessWidget {
  const CustomLoginTextFormFeild({
    super.key,
    required this.hint,
    required this.prefix,
    required this.suffix,
    this.isobscure = false,
    required this.onChanged,
    this.onFieldSubmitted,
    this.prefixicon = Icons.abc,
    this.suffixicon = Icons.abc,
    required this.validator,
    this.onPressed,
  });

  final String hint;
  final bool prefix;
  final bool suffix;
  final bool isobscure;
  final void Function(String) onChanged;
  final void Function(String)? onFieldSubmitted;
  final IconData prefixicon;
  final IconData suffixicon;
  final String Function(String?) validator;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 40, top: 10),
      child: TextFormField(
        onChanged: onChanged,
        onFieldSubmitted: onFieldSubmitted,
        validator: validator,
        obscureText: isobscure,
        decoration: InputDecoration(
          hintText: hint,
          suffixIconColor: iconsdectorationStyle(),
          prefixIconColor: iconsdectorationStyle(),
          hintStyle: textdecorationstyle(),
          prefixIcon: prefix ? Icon(prefixicon) : null,
          suffixIcon: suffix
              ? IconButton(onPressed: onPressed, icon: Icon(suffixicon))
              : null,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(24),
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffE3EAF2)),
            borderRadius: BorderRadius.all(
              Radius.circular(24),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff6D62DB)),
            borderRadius: BorderRadius.all(
              Radius.circular(24),
            ),
          ),
        ),
      ),
    );
  }

  MaterialStateTextStyle textdecorationstyle() {
    return MaterialStateTextStyle.resolveWith(
      (states) {
        if (states.contains(MaterialState.focused)) {
          return const TextStyle(color: Color(0xff6D62DB));
        }
        if (states.contains(MaterialState.error)) {
          return const TextStyle(color: Colors.red);
        }
        return const TextStyle(color: Colors.grey);
      },
    );
  }

  MaterialStateColor iconsdectorationStyle() {
    return MaterialStateColor.resolveWith(
      (states) {
        if (states.contains(MaterialState.focused)) {
          return const Color(0xff6D62DB);
        }
        if (states.contains(MaterialState.error)) {
          return Colors.red;
        }
        return Colors.grey;
      },
    );
  }
}
