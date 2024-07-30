import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:musicaster/app/internal/const/colors.dart';
import 'package:musicaster/app/pages/main_navigation/widgets/add_instrument_button.dart';
import 'package:musicaster/app/pages/main_navigation/widgets/drawer_panel.dart';
import 'package:musicaster/app/routing/app_router.gr.dart';

@RoutePage()
class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainView();
}

class _MainView extends State<MainNavigation> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        MusicalIdeasView(),
        RecordsView(),
        InstrumentsView(),
        NewsView(),
        SettingsView(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 50.h,
            centerTitle: true,
            title: Container(
              width: 335.w,
              height: 40.h,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              decoration: ShapeDecoration(
                color: black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.h),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Builder(
                    builder: (context) {
                      return GestureDetector(
                        onTap: () => Scaffold.of(context).openDrawer(),
                        child: Icon(
                          Icons.menu,
                          color: white,
                          size: 24.h,
                        ),
                      );
                      // tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip);
                    },
                  ),
                  const Spacer(),
                  Text(
                    switch (tabsRouter.activeIndex) {
                      0 => 'Musical ideas',
                      1 => 'Records',
                      2 => 'Instruments',
                      3 => 'News',
                      _ => 'Settings',
                    },
                  ),
                  const Spacer(),
                  switch (tabsRouter.activeIndex) {
                    0 => GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () async => AutoRouter.of(context).push(const AddIdeaView()),
                        child: SvgPicture.asset('assets/icons/Pen.svg', width: 24.w, height: 24.h),
                      ),
                    1 => GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () async => AutoRouter.of(context).push(const AddRecordView()),
                        child: SvgPicture.asset('assets/icons/Add Circle.svg', width: 24.w, height: 24.h),
                      ),
                    2 => SvgPicture.asset('assets/icons/Magnifer.svg', width: 24.w, height: 24.h),
                    3 => SvgPicture.asset('assets/icons/Magnifer.svg', width: 24.w, height: 24.h),
                    _ => SizedBox(width: 24.h),
                  }
                ],
              ),
            ),
          ),
          body: child,
          drawer: DrawerPanel(context: context, tabsRouter: tabsRouter),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: tabsRouter.activeIndex == 2 ? const AddInstrumentButton() : null,
        );
      },
    );
  }
}
