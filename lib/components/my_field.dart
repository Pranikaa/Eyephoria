import 'package:flutter/material.dart';

class MyField extends StatelessWidget {
  final TextEditingController controller;
  final String text;
  final bool obscureText;
  final Function? myValidator;  
  final Icon? prefixIcon;
  
  const MyField(
      {Key? key,
      required this.controller,
      this.text = "Email",
      this.myValidator,
      this.obscureText = false, this.prefixIcon, })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: 'Enter your $text',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100,)),
            prefixIcon: prefixIcon,
        ),

        validator: (value) {
          // return null;
          if (value!.isEmpty) {
            return "$text is required";
          }
          if (myValidator != null) {
            return myValidator!(value);
          }
          return null;
        },
      ),
    );
  }
}
