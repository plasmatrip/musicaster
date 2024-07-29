import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicaster/app/internal/const/colors.dart';
import 'package:musicaster/app/internal/const/ui.dart';
import 'package:musicaster/app/internal/utils.dart';

Future<String?> editDeleteDialog(BuildContext context, GlobalKey globalKey, [bool showDoneItem = false]) async {
  return await showMenu<String?>(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.h),
    ),
    context: context,
    color: white,
    surfaceTintColor: white,
    position: position(globalKey, context),
    elevation: 10,
    constraints: BoxConstraints(maxWidth: 79.w, minHeight: 68.h),
    items: [
      PopupMenuItem<String>(
        padding: EdgeInsets.only(left: 14.w, right: 14.w),
        value: 'EDIT',
        height: 24.h,
        child: Row(
          children: [
            Text('Edit', style: context.s14w400.copyWith(color: black)),
          ],
        ),
      ),
      const PopupMenuDivider(),
      PopupMenuItem<String>(
        padding: EdgeInsets.only(left: 14.w, right: 14.w),
        value: 'DELETE',
        height: 24.h,
        child: Row(
          children: [
            Text('Delete', style: context.s14w400.copyWith(color: red)),
          ],
        ),
      ),
    ],
  );
}
