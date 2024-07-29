import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicaster/app/internal/const/colors.dart';
import 'package:musicaster/app/internal/const/ui.dart';
import 'package:musicaster/app/repository/instrument_repo.dart';
import 'package:provider/provider.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: context.watch<InstrumentRepo>().canSave()
          ? () async {
              context.read<InstrumentRepo>().save();
              AutoRouter.of(context).maybePop(true);
            }
          : null,
      child: Ink(
        decoration: ShapeDecoration(
          color: context.read<InstrumentRepo>().canSave() ? null : const Color(0xFFD3D3D3),
          gradient: context.read<InstrumentRepo>().canSave()
              ? const LinearGradient(
                  begin: Alignment(1.00, 0.00),
                  end: Alignment(-1, 0),
                  colors: [Color(0xFF260870), Color(0xFFA4037F)],
                )
              : null,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: SizedBox(
          width: 335.w,
          height: 40.h,
          child: Center(
            child: Text(
              'Save',
              style: context.s17w600.copyWith(color: context.read<InstrumentRepo>().canSave() ? white : greyDark),
            ),
          ),
        ),
      ),
    );
  }
}
