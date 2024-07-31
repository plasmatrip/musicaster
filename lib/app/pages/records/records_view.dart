import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicaster/app/models/record.dart';
import 'package:musicaster/app/pages/records/widgets/records_item.dart';
import 'package:musicaster/app/repository/record_repo.dart';
import 'package:provider/provider.dart';

@RoutePage()
class RecordsView extends StatelessWidget {
  const RecordsView({super.key});

  @override
  Widget build(BuildContext context) {
    Iterable recordsList = context.watch<RecordsRepo>().records();
    return ListView.separated(
      padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 24.h, bottom: 94.h),
      itemCount: recordsList.length,
      separatorBuilder: (context, index) => SizedBox(height: 16.h),
      itemBuilder: (context, index) {
        Records records = recordsList.elementAt(index);
        return RecordsItem(
          records: records,
          play: false,
        );
      },
    );
  }
}
