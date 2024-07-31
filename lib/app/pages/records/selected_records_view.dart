import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:musicaster/app/internal/const/colors.dart';
import 'package:musicaster/app/internal/const/ui.dart';
import 'package:musicaster/app/models/record.dart';
import 'package:musicaster/app/pages/records/widgets/records_item.dart';
import 'package:musicaster/app/repository/record_repo.dart';
import 'package:musicaster/app/routing/app_router.gr.dart';
import 'package:provider/provider.dart';

@RoutePage()
class SelectedRecordsView extends StatefulWidget {
  const SelectedRecordsView({required this.recordsKey, super.key});

  final int recordsKey;

  @override
  State<SelectedRecordsView> createState() => _SelectedRecordsViewState();
}

class _SelectedRecordsViewState extends State<SelectedRecordsView> {
  late Records records;

  @override
  void initState() {
    records = context.read<RecordsRepo>().repo.get(widget.recordsKey);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: black,
        leading: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () async => AutoRouter.of(context).maybePop(),
          child: SvgPicture.asset('assets/icons/Round Alt Arrow Left.svg', width: 24.h, height: 24.h, fit: BoxFit.none),
        ),
        title: Text(records.title),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              RecordsItem(records: records, play: true),
              SizedBox(height: 16.h),
              Text('Verse 1', style: context.s14w500.copyWith(color: greyDark)),
              Container(
                width: 335.w,
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                decoration: ShapeDecoration(
                  color: grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.h),
                  ),
                ),
                child: Text(
                  records.verse.first,
                  style: context.s14w400.copyWith(color: black),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 16.h),
              Text('Chorus', style: context.s14w500.copyWith(color: greyDark)),
              Container(
                width: 335.w,
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                decoration: ShapeDecoration(
                  color: grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.h),
                  ),
                ),
                child: Text(
                  records.chorus,
                  style: context.s14w400.copyWith(color: black),
                  textAlign: TextAlign.center,
                ),
              ),
              if (records.verse.length > 1) ...[
                for (int i = 1; i < records.verse.length; i++) ...[
                  SizedBox(height: 16.h),
                  Text('Verse ${i + 1}', style: context.s14w500.copyWith(color: greyDark)),
                  Container(
                    width: 335.w,
                    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                    decoration: ShapeDecoration(
                      color: grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.h),
                      ),
                    ),
                    child: Text(
                      records.verse.elementAt(i),
                      style: context.s14w400.copyWith(color: black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 24.h),
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () async {
                      context.read<RecordsRepo>().edit(records.key);
                      var result = await AutoRouter.of(context).push(const AddRecordView());
                      if (result == true) {
                        setState(() {
                          records = context.read<RecordsRepo>().repo.get(widget.recordsKey);
                        });
                      }
                    },
                    child: Ink(
                      decoration: ShapeDecoration(
                        color: white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.h),
                        ),
                      ),
                      child: SizedBox(
                        width: 335.w,
                        height: 32.h,
                        child: Center(
                          child: Text(
                            'Edit',
                            style: context.s17w600.copyWith(color: black),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ],
            ],
          ),
        ),
      ),
    );
  }
}
