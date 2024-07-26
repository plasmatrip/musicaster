import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hive/hive.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:musicaster/app/internal/const/boxes.dart';
import 'package:musicaster/app/internal/const/colors.dart';
import 'package:musicaster/app/internal/const/ui.dart';
import 'package:musicaster/app/internal/utils.dart';
import 'package:musicaster/app/internal/widgets/custom_container.dart';
import 'package:musicaster/app/models/settings.dart';

@RoutePage()
class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () async => openUrl(Hive.box<Settings>(Boxes.settings).getAt(0)!.privacyPolicyUri),
              child: CustomContainer(
                width: 335.w,
                height: 56.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset('assets/icons/Lock.svg', width: 24.h, height: 24.h),
                    SizedBox(width: 16.w),
                    Text('Privacy policy', style: context.s15w500.copyWith(color: black)),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.h),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () async => openUrl(Hive.box<Settings>(Boxes.settings).getAt(0)!.termsOfUseUri),
              child: CustomContainer(
                width: 335.w,
                height: 56.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset('assets/icons/Diploma.svg', width: 24.h, height: 24.h),
                    SizedBox(width: 16.w),
                    Text('User agreement', style: context.s15w500.copyWith(color: black)),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.h),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () async {
                final InAppReview inAppReview = InAppReview.instance;
                if (await inAppReview.isAvailable()) {
                  await inAppReview.requestReview();
                }
              },
              child: CustomContainer(
                width: 335.w,
                height: 56.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset('assets/icons/Heart.svg', width: 24.h, height: 24.h),
                    SizedBox(width: 16.w),
                    Text('Rate the app', style: context.s15w500.copyWith(color: black)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
