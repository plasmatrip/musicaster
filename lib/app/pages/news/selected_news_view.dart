import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:musicaster/app/internal/const/colors.dart';
import 'package:musicaster/app/internal/const/ui.dart';
import 'package:musicaster/app/internal/widgets/custom_container.dart';
import 'package:musicaster/app/models/news.dart';

@RoutePage()
class SelectedNewsView extends StatelessWidget {
  const SelectedNewsView({required this.news, super.key});

  final News news;

  @override
  Widget build(BuildContext context) {
    final RegExp tag = RegExp(r'\[(?<=\[)[0-9A-Z\s]+(?=\])\]');
    RegExpMatch? match;
    List<Widget> content = [];

    for (int i = 0; i < news.content.length; i++) {
      match = tag.firstMatch(news.content[i]);
      if (match != null) {
        switch (match[0]) {
          case '[TITLE]':
            content.addAll([
              Text(news.title, style: context.s16w400b.copyWith(color: black)),
              SizedBox(height: 16.h),
            ]);
          case '[TEXT]':
            content.addAll([
              Text(news.content[i].replaceAll(tag, ''), style: context.s14w400.copyWith(color: black)),
              SizedBox(height: 16.h),
            ]);
          case '[IMAGE]':
            content.addAll([
              Image.asset(news.content[i].replaceAll(tag, '')),
              SizedBox(height: 16.h),
            ]);
          case '[TAG]':
            content.addAll([
              Text(news.tag, style: context.s12w400.copyWith(color: black)),
              SizedBox(height: 16.h),
            ]);
        }
      }
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: black,
        leading: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => AutoRouter.of(context).removeLast(),
          child: SvgPicture.asset('assets/icons/Round Alt Arrow Left.svg', width: 24.h, height: 24.h, fit: BoxFit.none),
        ),
        title: Text(news.tag),
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
          padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h, bottom: 100.h),
          child: CustomContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: content,
            ),
          ),
        ),
      ),
    );
  }
}
