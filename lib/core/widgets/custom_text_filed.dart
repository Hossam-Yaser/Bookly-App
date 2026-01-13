import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: buildOutlinedBorder(),
        focusedBorder: buildOutlinedBorder(),
        hintText: "Search",
        suffixIcon: Opacity(
          opacity: 0.75,
          child: Icon(FontAwesomeIcons.magnifyingGlass, size: 22),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlinedBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
