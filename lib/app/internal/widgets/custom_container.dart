import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicaster/app/internal/const/colors.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({required this.child, super.key, this.width, this.height, this.padding});

  final double? width;
  final double? height;
  final Widget child;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding ?? EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 0.5.h, color: black),
          borderRadius: BorderRadius.circular(16.h),
        ),
      ),
      child: child,
    );
  }
}
