import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:musicaster/app/internal/const/boxes.dart';
import 'package:musicaster/app/models/news.dart';
import 'package:musicaster/app/pages/news/widgets/news_item.dart';

@RoutePage()
class NewsView extends StatelessWidget {
  const NewsView({super.key});

  @override
  Widget build(BuildContext context) {
    Iterable newsList = Hive.box<News>(Boxes.news).values;
    return ListView.separated(
      padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 24.h, bottom: 94.h),
      itemCount: newsList.length,
      separatorBuilder: (context, index) => SizedBox(height: 16.h),
      itemBuilder: (context, index) {
        News news = newsList.elementAt(index);
        return NewsItem(news: news);
      },
    );
  }
}
