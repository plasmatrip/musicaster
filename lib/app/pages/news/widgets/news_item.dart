import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicaster/app/internal/const/colors.dart';
import 'package:musicaster/app/internal/const/ui.dart';
import 'package:musicaster/app/internal/widgets/custom_container.dart';
import 'package:musicaster/app/models/news.dart';
import 'package:musicaster/app/routing/app_router.gr.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({
    required this.news,
    super.key,
  });

  final News news;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () async => AutoRouter.of(context).push(SelectedNewsView(news: news)),
      child: SizedBox(
        width: 335.w,
        // height: 114.h,
        child: IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                news.image,
                width: 90.w,
              ),
              CustomContainer(
                width: 237.w,
                padding: EdgeInsets.all(8.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(news.tag, style: context.s12w400.copyWith(color: black)),
                    SizedBox(height: 4.h),
                    Text(news.title, style: context.s16w400b.copyWith(color: black, letterSpacing: -1.w)),
                    const Spacer(),
                    Text(news.time, style: context.s12w400.copyWith(color: greyDark)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
