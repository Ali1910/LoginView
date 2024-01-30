import 'package:flutter/material.dart';

class CustomLoginTextFormFeild extends StatelessWidget {
  const CustomLoginTextFormFeild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 40, top: 10),
      child: TextFormField(
        decoration: const InputDecoration(
          label: Text('User name'),
          hintText: 'please enter your email',
          prefixIcon: Icon(Icons.email),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(24),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffE3EAF2)),
            borderRadius: BorderRadius.all(
              Radius.circular(24),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepPurple),
            borderRadius: BorderRadius.all(
              Radius.circular(24),
            ),
          ),
        ),
      ),
    );
  }
}
