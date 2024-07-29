import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hive/hive.dart';
import 'package:musicaster/app/internal/const/boxes.dart';
import 'package:musicaster/app/models/settings.dart';
import 'package:musicaster/app/repository/instrument_repo.dart';
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
              if (context.watch<InstrumentRepo>().icon.isNotEmpty) ...[
                Container(
                  width: 36.h,
                  height: 36.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.h),
                    image: DecorationImage(
                        image: FileImage(File('${Hive.box<Settings>(Boxes.settings).getAt(0)!.appDir}/${context.read<InstrumentRepo>().icon}')),
                        fit: BoxFit.cover),
                  ),
                ),
              ],
              for (int i = 1; i <= 20; i++) ...[
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () => context.read<InstrumentRepo>().instrumentId = i,
                  child: SvgPicture.asset(
                    context.watch<InstrumentRepo>().instrumentId == i ? 'assets/icons/instruments/${i}on.svg' : 'assets/icons/instruments/${i}off.svg',
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
