import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicaster/app/internal/const/colors.dart';
import 'package:musicaster/app/internal/const/ui.dart';
import 'package:musicaster/app/internal/widgets/custom_container.dart';

class Page2 extends StatelessWidget {
  const Page2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Image.asset('assets/images/ob1.png', width: 335.h),
        SizedBox(height: 32.h),
        CustomContainer(
          width: 335.w,
          height: 194.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Records', style: context.s34w700.copyWith(color: black)),
              SizedBox(height: 16.h),
              Text(
                'Add recordings with your lyrics and melodies with the option to add titles and descriptions.',
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
                      gradient: const LinearGradient(
                        begin: Alignment(1.00, 0.00),
                        end: Alignment(-1, 0),
                        colors: [Color(0xFFA4037F), Color(0xFF260870)],
                      ),
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
