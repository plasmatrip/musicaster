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
import 'package:musicaster/app/internal/widgets/delete_dalog.dart';
import 'package:musicaster/app/internal/widgets/edit_delete_dialog.dart';
import 'package:musicaster/app/models/instrument.dart';
import 'package:musicaster/app/models/settings.dart';
import 'package:musicaster/app/repository/instrument_repo.dart';
import 'package:musicaster/app/routing/app_router.gr.dart';
import 'package:provider/provider.dart';

class InstrumentItem extends StatelessWidget {
  const InstrumentItem({
    required this.instrument,
    super.key,
  });

  final Instrument instrument;

  @override
  Widget build(BuildContext context) {
    final GlobalKey globalKey = GlobalKey();
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () async => AutoRouter.of(context).push(SelectedInstrumentView(instrumentKey: instrument.key)),
      child: CustomContainer(
        child: Stack(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
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
                  SvgPicture.asset('assets/icons/instruments/${instrument.instrumentId}off.svg'),
                ],
                SizedBox(width: 16.w),
                SizedBox(
                  width: 211.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        instrument.title,
                        style: context.s18w400.copyWith(color: black),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        instrument.type,
                        style: context.s14w400.copyWith(color: greyDark),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 0.h,
              right: 0.w,
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () async {
                  var result = await editDeleteDialog(context, globalKey);
                  if (context.mounted) {
                    switch (result) {
                      case 'EDIT':
                        context.read<InstrumentRepo>().edit(instrument.key);
                        AutoRouter.of(context).push(const AddInstrumentView());
                      case 'DELETE':
                        var result = await deleteDialog(context, 'Do you really want to delete the instrument?');
                        if (result == 'DELETE' && context.mounted) {
                          context.read<InstrumentRepo>().delete(key: instrument.key);
                        }
                    }
                  }
                },
                child: SvgPicture.asset(
                  key: globalKey,
                  'assets/icons/Menu Dots.svg',
                  width: 24.w,
                  height: 24.h,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
