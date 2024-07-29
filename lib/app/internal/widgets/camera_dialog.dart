import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicaster/app/internal/const/colors.dart';
import 'package:musicaster/app/internal/const/ui.dart';

Future<String?> cameraDialog(BuildContext context) {
  return showDialog<String>(
    context: context,
    builder: (context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.h)),
        backgroundColor: white,
        surfaceTintColor: white,
        shadowColor: const Color(0x3FABB1B9),
        elevation: 10,
        actionsPadding: EdgeInsets.zero,
        actionsAlignment: MainAxisAlignment.center,
        content: SizedBox(
          width: 100.w,
          height: 135.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FilledButton(
                style: FilledButton.styleFrom(
                  minimumSize: Size(130.w, 32.h),
                  maximumSize: Size(130.w, 32.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.h),
                  ),
                  backgroundColor: grey,
                  foregroundColor: black,
                ),
                onPressed: () => Navigator.of(context, rootNavigator: true).pop('Camera'),
                child: Center(
                  child: Text('Camera', style: context.s15w600),
                ),
              ),
              FilledButton(
                style: FilledButton.styleFrom(
                  minimumSize: Size(130.w, 32.h),
                  maximumSize: Size(130.w, 32.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.h),
                  ),
                  backgroundColor: grey,
                  foregroundColor: black,
                ),
                onPressed: () => Navigator.of(context, rootNavigator: true).pop('Galery'),
                child: Center(
                  child: Text('Galery', style: context.s15w600),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
// 