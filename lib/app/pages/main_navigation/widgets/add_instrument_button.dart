import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicaster/app/internal/const/colors.dart';
import 'package:musicaster/app/internal/const/ui.dart';
import 'package:musicaster/app/routing/app_router.gr.dart';

class AddInstrumentButton extends StatelessWidget {
  const AddInstrumentButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () async => AutoRouter.of(context).push(const AddInstrumentView()),
      child: Ink(
        decoration: ShapeDecoration(
          color: const Color(0xFFD3D3D3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.h),
          ),
        ),
        child: SizedBox(
          width: 335.w,
          height: 40.h,
          child: Center(
            child: Text(
              'Add Instrument',
              style: context.s17w600.copyWith(color: greyDark),
            ),
          ),
        ),
      ),
    );
  }
}
