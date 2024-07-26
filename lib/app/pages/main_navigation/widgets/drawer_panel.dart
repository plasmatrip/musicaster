import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:musicaster/app/internal/const/colors.dart';
import 'package:musicaster/app/internal/const/ui.dart';

class DrawerPanel extends StatelessWidget {
  const DrawerPanel({
    required this.context,
    required this.tabsRouter,
    super.key,
  });

  final BuildContext context;
  final TabsRouter tabsRouter;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 271.w,
      backgroundColor: black,
      child: ListView(
        padding: EdgeInsets.only(top: 48.h),
        children: [
          Center(child: Text('Musicaster', style: context.s32w800.copyWith(color: white))),
          Divider(color: bg, thickness: 0.2.h, height: 40.h),
          ListTile(
            leading: SvgPicture.asset(tabsRouter.activeIndex == 0 ? 'assets/icons/on1.svg' : 'assets/icons/off1.svg', width: 24.w, height: 24.h),
            title: Text('Musical ideas', style: context.s16w500.copyWith(color: tabsRouter.activeIndex == 0 ? white : greyDark)),
            onTap: () async {
              Future.delayed(const Duration(milliseconds: 200))
                  .whenComplete(() => Navigator.of(context).pop())
                  .whenComplete(() => tabsRouter.setActiveIndex(0));
            },
          ),
          ListTile(
            leading: SvgPicture.asset(tabsRouter.activeIndex == 1 ? 'assets/icons/on2.svg' : 'assets/icons/off2.svg', width: 24.w, height: 24.h),
            title: Text('Records', style: context.s16w500.copyWith(color: tabsRouter.activeIndex == 1 ? white : greyDark)),
            onTap: () async {
              Future.delayed(const Duration(milliseconds: 200))
                  .whenComplete(() => Navigator.of(context).pop())
                  .whenComplete(() => tabsRouter.setActiveIndex(1));
            },
          ),
          ListTile(
            leading: SvgPicture.asset(tabsRouter.activeIndex == 2 ? 'assets/icons/on3.svg' : 'assets/icons/off3.svg', width: 24.w, height: 24.h),
            title: Text('Instruments', style: context.s16w500.copyWith(color: tabsRouter.activeIndex == 2 ? white : greyDark)),
            onTap: () async {
              Future.delayed(const Duration(milliseconds: 200))
                  .whenComplete(() => Navigator.of(context).pop())
                  .whenComplete(() => tabsRouter.setActiveIndex(2));
            },
          ),
          ListTile(
            leading: SvgPicture.asset(tabsRouter.activeIndex == 3 ? 'assets/icons/on4.svg' : 'assets/icons/off4.svg', width: 24.w, height: 24.h),
            title: Text('News', style: context.s16w500.copyWith(color: tabsRouter.activeIndex == 3 ? white : greyDark)),
            onTap: () async {
              Future.delayed(const Duration(milliseconds: 200))
                  .whenComplete(() => Navigator.of(context).pop())
                  .whenComplete(() => tabsRouter.setActiveIndex(3));
            },
          ),
          ListTile(
            leading: SvgPicture.asset(tabsRouter.activeIndex == 4 ? 'assets/icons/on5.svg' : 'assets/icons/off5.svg', width: 24.w, height: 24.h),
            title: Text('Settings', style: context.s16w500.copyWith(color: tabsRouter.activeIndex == 4 ? white : greyDark)),
            onTap: () async {
              Future.delayed(const Duration(milliseconds: 200))
                  .whenComplete(() => Navigator.of(context).pop())
                  .whenComplete(() => tabsRouter.setActiveIndex(4));
            },
          ),
        ],
      ),
    );
  }
}
