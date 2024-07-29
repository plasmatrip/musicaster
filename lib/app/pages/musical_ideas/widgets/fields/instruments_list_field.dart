import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:musicaster/app/repository/idea_repo.dart';
import 'package:provider/provider.dart';

class InstrumentsListField extends StatelessWidget {
  const InstrumentsListField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 335.w,
          height: 148.h,
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 5.w),
          child: Wrap(
            spacing: 12.w,
            runSpacing: 12.h,
            alignment: WrapAlignment.center,
            children: [
              for (int i = 1; i <= 20; i++) ...[
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () => context.read<IdeaRepo>().setInstrument(i),
                  child: SvgPicture.asset(
                    context.watch<IdeaRepo>().getInstrumet(i) ? 'assets/icons/instruments/${i}on.svg' : 'assets/icons/instruments/${i}off.svg',
                  ),
                ),
              ],
            ],
          ),
        ),
        SizedBox(height: 16.h),
      ],
    );
  }
}
