import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hive/hive.dart';
import 'package:musicaster/app/internal/const/boxes.dart';
import 'package:musicaster/app/internal/const/colors.dart';
import 'package:musicaster/app/internal/const/ui.dart';
import 'package:musicaster/app/internal/widgets/custom_container.dart';
import 'package:musicaster/app/models/instrument.dart';
import 'package:musicaster/app/models/settings.dart';
import 'package:musicaster/app/pages/instruments/widgets/edit_button.dart';
import 'package:musicaster/app/repository/instrument_repo.dart';
import 'package:provider/provider.dart';

@RoutePage()
class SelectedInstrumentView extends StatelessWidget {
  const SelectedInstrumentView({required this.instrumentKey, super.key});

  final int instrumentKey;

  @override
  Widget build(BuildContext context) {
    Instrument instrument = context.watch<InstrumentRepo>().repo.get(instrumentKey);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: black,
        leading: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => AutoRouter.of(context).removeLast(),
          child: SvgPicture.asset('assets/icons/Round Alt Arrow Left.svg', width: 24.h, height: 24.h, fit: BoxFit.none),
        ),
        title: Text(instrument.title),
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(8.h),
            bottomRight: Radius.circular(8.h),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 24.h, bottom: 94.h),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomContainer(
                width: 335.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        if (instrument.icon.isNotEmpty) ...[
                          Container(
                            width: 36.h,
                            height: 36.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.h),
                              image: DecorationImage(
                                  image: FileImage(File('${Hive.box<Settings>(Boxes.settings).getAt(0)!.appDir}/${instrument.icon}')), fit: BoxFit.cover),
                            ),
                          ),
                        ] else ...[
                          SvgPicture.asset('assets/icons/instruments/${instrument.instrumentId}on.svg'),
                        ],
                        SizedBox(width: 16.w),
                        Text(instrument.title, style: context.s20w400.copyWith(color: black)),
                      ],
                    ),
                    SizedBox(height: 16.h),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text('Type', style: context.s14w500.copyWith(color: greyDark)),
                        Expanded(
                          child: Text(
                            instrument.type,
                            style: context.s14w400.copyWith(color: black),
                            textAlign: TextAlign.right,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.h),
                    Text(instrument.description, style: context.s14w400.copyWith(color: black)),
                  ],
                ),
              ),
              SizedBox(height: 24.h),
              EditButton(instrumentKey: instrumentKey),
            ],
          ),
        ),
      ),
    );
  }
}
