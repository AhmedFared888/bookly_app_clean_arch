import 'package:bookly_app_clean_arch/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.textColor,
    required this.text,
    required this.backGroundColor,
    this.borderRadius,
  });
  final Color textColor;
  final String text;
  final Color backGroundColor;
  final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
          backgroundColor: backGroundColor,
        ),
        onPressed: () {},
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(color: textColor),
        ),
      ),
    );
  }
}








//Container(
    //   width: MediaQuery.of(context).size.width * .35,
    //   height: 48,
    //   decoration: BoxDecoration(
    //     color: backGroundColor,
    //   ),
    //   child: Center(
    //     child: Text(
    //       text,
    //       style: Styles.textStyle18.copyWith(color: textColor),
    //     ),
    //   ),
    // );