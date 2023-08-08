// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

class CustomTextInput extends StatelessWidget {
  const CustomTextInput({
    super.key,
    required this.hintText,
    required this.isObscure,
    required this.controller,
  });

  final String hintText;
  final bool isObscure;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isObscure,
      style: TextStyle(
        fontSize: ResponsiveBreakpoints.of(context).largerThan(TABLET)
            ? 36
            : ResponsiveBreakpoints.of(context).isTablet
                ? 24
                : 18,
        letterSpacing: 6,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      cursorHeight: ResponsiveBreakpoints.of(context).largerThan(TABLET)
          ? 36
          : ResponsiveBreakpoints.of(context).isTablet
              ? 24
              : 18,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: GoogleFonts.roboto(
          textStyle: TextStyle(
            fontSize: ResponsiveBreakpoints.of(context).largerThan(TABLET)
                ? 36
                : ResponsiveBreakpoints.of(context).isTablet
                    ? 24
                    : 18,
            letterSpacing: 6,
            height: 1,
            fontWeight: FontWeight.bold,
            color: Colors.grey[400],
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(width: 6),
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(width: 6),
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
      ),
    );
  }
}
