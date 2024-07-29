import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicaster/app/internal/const/colors.dart';
import 'package:musicaster/app/internal/const/ui.dart';

class EmptyIdea extends StatelessWidget {
  const EmptyIdea({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 120.h),
        Image.asset('assets/images/empty_idea.png', width: 375.w),
        Text(
          'You haven\'t added your ideas.\nLet\'s fix it!',
          style: context.s12w400.copyWith(color: greyDark),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
