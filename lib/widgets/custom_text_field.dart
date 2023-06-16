import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    this.onChanged,
    required this.hintText,
    this.controller,
    this.inputFormatters,
    this.radius = 8,
    this.suffix,
    this.maxLines = 1,
    this.borderColor,
    this.textAlign,
    this.style,
  });
  final Function(String)? onChanged;
  final String hintText;
  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController? controller;
  final Widget? suffix;
  final double radius;
  final int maxLines;
  final Color? borderColor;
  final TextAlign? textAlign;
  final TextStyle? style;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: widget.textAlign ?? TextAlign.start,
      maxLines: widget.maxLines,
      style: widget.style ??
          const TextStyle(
            fontSize: 15,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
      controller: widget.controller,
      inputFormatters: widget.inputFormatters,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        prefixIcon: widget.suffix,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.radius),
          borderSide: BorderSide(
            width: 1,
            color: widget.borderColor ?? Colors.white,
          ),
        ),
        hintText: widget.hintText,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.radius),
          borderSide: BorderSide(
            width: 1,
            color: widget.borderColor ?? Colors.white,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.radius),
          borderSide: BorderSide(
            width: 1,
            color: widget.borderColor ?? Colors.white,
          ),
        ),
      ),
    );
  }
}
