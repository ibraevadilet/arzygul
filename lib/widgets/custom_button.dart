import 'package:arzygul/widgets/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.text,
    this.onPressed,
    this.color,
    this.textColor,
    this.height,
    this.isLoading = false,
    this.width,
    this.radius = 12,
    this.isGradient = false,
    this.icon,
  }) : super(key: key);
  final String text;
  final String? icon;
  final GestureTapCallback? onPressed;
  final Color? color;
  final Color? textColor;
  final double? height;
  final double? width;
  final bool isLoading;
  final double radius;
  final bool isGradient;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isLoading ? null : onPressed,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: Colors.green,
        ),
        height: height ?? 56,
        width: width ?? MediaQuery.of(context).size.width,
        child: Text(
          text,
          style: AppTextStyles.s19W700(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
