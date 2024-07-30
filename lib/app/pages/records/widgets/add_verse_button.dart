import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicaster/app/internal/const/colors.dart';
import 'package:musicaster/app/internal/const/ui.dart';
import 'package:musicaster/app/repository/record_repo.dart';
import 'package:provider/provider.dart';

class AddVerseButton extends StatelessWidget {
  const AddVerseButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () async => context.read<RecordsRepo>().addVerse(),
      child: Ink(
        decoration: ShapeDecoration(
          color: white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.h),
          ),
        ),
        child: SizedBox(
          width: 335.w,
          height: 32.h,
          child: Center(
            child: Text(
              'Add a verse',
              style: context.s17w600.copyWith(color: black),
            ),
          ),
        ),
      ),
    );
  }
}
