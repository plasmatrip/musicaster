import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicaster/app/internal/const/colors.dart';
import 'package:musicaster/app/internal/const/ui.dart';

Future<String?> deleteDialog(BuildContext context, String question) {
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
                width: 331.w,
                height: 156.h,
                padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.h),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Delete', style: context.s22w600.copyWith(color: red)),
                    Text(
                      question,
                      style: context.s14w400.copyWith(color: black),
                      textAlign: TextAlign.center,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FilledButton(
                          style: FilledButton.styleFrom(
                            minimumSize: Size(130.w, 32.h),
                            maximumSize: Size(130.w, 32.h),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.h),
                            ),
                            backgroundColor: white,
                            foregroundColor: black,
                          ),
                          onPressed: () => Navigator.of(context, rootNavigator: true).pop('CANCEL'),
                          child: Center(
                            child: Text('Cancel', style: context.s15w600),
                          ),
                        ),
                        FilledButton(
                          style: FilledButton.styleFrom(
                            minimumSize: Size(130.w, 32.h),
                            maximumSize: Size(130.w, 32.h),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.h),
                            ),
                            backgroundColor: red,
                            foregroundColor: white,
                          ),
                          onPressed: () => Navigator.of(context, rootNavigator: true).pop('DELETE'),
                          child: Center(
                            child: Text('Delete', style: context.s15w600),
                          ),
                        ),
                      ],
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
