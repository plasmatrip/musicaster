import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicaster/app/internal/const/colors.dart';
import 'package:musicaster/app/internal/const/ui.dart';

Future<String?> alertDialog(BuildContext context, String question) {
  return showDialog<String>(
    context: context,
    builder: (context) {
      return StatefulBuilder(
        builder: (context, setState) {
          return AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.h)),
            backgroundColor: white,
            surfaceTintColor: white,
            elevation: 7,
            actionsPadding: EdgeInsets.zero,
            actionsAlignment: MainAxisAlignment.center,
            actions: <Widget>[
              Container(
                width: 260.w,
                height: 120.h,
                padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
                child: Column(
                  children: [
                    Text(
                      question,
                      style: context.s14w400.copyWith(color: black),
                      textAlign: TextAlign.center,
                    ),
                    const Spacer(),
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
                      onPressed: () => Navigator.of(context, rootNavigator: true).pop('Cancel'),
                      child: Center(
                        child: Text('OK', style: context.s15w600),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      );
    },
  );
}
