import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicaster/app/internal/const/colors.dart';
import 'package:musicaster/app/internal/const/ui.dart';
import 'package:musicaster/app/internal/widgets/custom_container.dart';

class Page3 extends StatelessWidget {
  const Page3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Image.asset('assets/images/ob3.png', width: 335.h),
        SizedBox(height: 32.h),
        CustomContainer(
          width: 335.w,
          height: 194.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Instruments', style: context.s34w700.copyWith(color: black)),
              SizedBox(height: 16.h),
              Text(
                'Keep a list of all musical instruments with basic data. Add new ones, view, edit, or delete tools. Everything is in your hands!',
                style: context.s14w400.copyWith(color: black),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 91.w,
                    height: 4.h,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFD3D3D3),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.h)),
                    ),
                  ),
                  Container(
                    width: 91.w,
                    height: 4.h,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFD3D3D3),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.h)),
                    ),
                  ),
                  Container(
                    width: 91.w,
                    height: 4.h,
                    decoration: ShapeDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment(1.00, 0.00),
                        end: Alignment(-1, 0),
                        colors: [Color(0xFFA4037F), Color(0xFF260870)],
                      ),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.h)),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(height: 32.h),
      ],
    );
  }
}
