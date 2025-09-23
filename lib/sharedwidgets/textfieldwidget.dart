import 'package:flutter/material.dart';

class CustomeTextField extends StatelessWidget {
  final String label;
  final String? prefixtext;
  final bool obscuretext;
  final String? hinttext;
  final TextInputType? inputType;
  final IconData? suffixicon;
  const CustomeTextField({
    super.key,
    required this.label,
    this.prefixtext,
    this.obscuretext = false,
    this.hinttext,
    required this.inputType,
    this.suffixicon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: inputType,
      decoration: InputDecoration(
        label: Text(label),
        hintText: hinttext,
        hintStyle: TextStyle(color: Colors.white70),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        labelStyle: TextStyle(color: Colors.white70),
        suffixIcon: Icon(suffixicon, color: Colors.white70),
        prefixIcon: prefixtext != null
            ? Padding(
                padding: EdgeInsets.only(left: 10, top: 10),
                child: Text(prefixtext!, style: TextStyle(color: Colors.white)),
              )
            : null,
        filled: true,
        fillColor: Colors.white.withOpacity(0.2),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide.none,
        ),
      ),
      obscureText: obscuretext,

      style: TextStyle(color: Colors.white),
    );
  }
}
