import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:musicaster/app/internal/const/boxes.dart';
import 'package:musicaster/app/internal/const/colors.dart';
import 'package:musicaster/app/internal/const/ui.dart';
import 'package:musicaster/app/models/settings.dart';
import 'package:musicaster/app/pages/onboarding/widgets/page1.dart';
import 'package:musicaster/app/pages/onboarding/widgets/page2.dart';
import 'package:musicaster/app/pages/onboarding/widgets/page3.dart';
import 'package:musicaster/app/routing/app_router.gr.dart';

@RoutePage()
class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  PageController controller = PageController();
  bool start = false;

  void listener() {
    switch (controller.position.userScrollDirection) {
      case ScrollDirection.reverse:
        if ((controller.page ?? 0) > 1) {
          setState(
            () {
              start = true;
            },
          );
        }
      case ScrollDirection.forward:
        if ((controller.page ?? 0) < 2) {
          setState(
            () {
              start = false;
            },
          );
        }
      case ScrollDirection.idle:
        if ((controller.page ?? 0) >= 2) {
          setState(
            () {
              start = true;
            },
          );
        }
    }
  }

  @override
  void initState() {
    controller.addListener(listener);
    super.initState();
  }

  @override
  void dispose() {
    controller.removeListener(listener);
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: controller,
              children: const [
                Page1(),
                Page2(),
                Page3(),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (start) ...[
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () async {
                      Settings settings = Hive.box<Settings>(Boxes.settings).getAt(0)!;
                      settings.showOnboarding = false;
                      settings.save();
                      AutoRouter.of(context).replace(const MainNavigation());
                    },
                    child: Ink(
                      decoration: ShapeDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment(1.00, 0.00),
                          end: Alignment(-1, 0),
                          colors: [Color(0xFF260870), Color(0xFFA4037F)],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: SizedBox(
                        width: 335.w,
                        height: 40.h,
                        child: Center(
                          child: Text(
                            'Next',
                            style: context.s17w600.copyWith(color: white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // FilledButton(
                ] else ...[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () async => AutoRouter.of(context).replace(const MainNavigation()),
                        child: Ink(
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: SizedBox(
                            width: 156.w,
                            height: 40.h,
                            child: Center(
                              child: Text(
                                'Skip',
                                style: context.s17w600.copyWith(color: black),
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () async => controller.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        ),
                        child: Ink(
                          decoration: ShapeDecoration(
                            gradient: const LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFF260870), Color(0xFFA4037F)],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: SizedBox(
                            width: 156.w,
                            height: 40.h,
                            child: Center(
                              child: Text(
                                'Next',
                                style: context.s17w600.copyWith(color: white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
                SizedBox(height: 16.h),
                IntrinsicHeight(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 157.w,
                        child: Text(
                          'Terms of use',
                          style: context.s8w400.copyWith(color: greyDark),
                          textAlign: TextAlign.right,
                        ),
                      ),
                      VerticalDivider(color: black, thickness: 0.5.w, width: 20.w),
                      SizedBox(
                        width: 157.w,
                        child: Text(
                          'Privacy policy',
                          style: context.s8w400.copyWith(color: greyDark),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 32.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
