import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicaster/app/internal/const/colors.dart';
import 'package:musicaster/app/internal/const/ui.dart';
import 'package:musicaster/app/repository/instrument_repo.dart';
import 'package:musicaster/app/routing/app_router.gr.dart';
import 'package:provider/provider.dart';

class EditButton extends StatelessWidget {
  const EditButton({
    required this.instrumentKey,
    super.key,
  });

  final int instrumentKey;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () async {
        context.read<InstrumentRepo>().edit(instrumentKey);
        AutoRouter.of(context).push(const AddInstrumentView());
      },
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
              'Edit Instrument',
              style: context.s17w600.copyWith(color: black),
            ),
          ),
        ),
      ),
    );
  }
}
