import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:musicaster/app/internal/const/colors.dart';
import 'package:musicaster/app/internal/const/ui.dart';
import 'package:musicaster/app/pages/records/widgets/add_verse_button.dart';
import 'package:musicaster/app/pages/records/widgets/fields/chorus_field.dart';
import 'package:musicaster/app/pages/records/widgets/fields/description_field.dart';
import 'package:musicaster/app/pages/records/widgets/fields/melody_field.dart';
import 'package:musicaster/app/pages/records/widgets/fields/title_field.dart';
import 'package:musicaster/app/pages/records/widgets/fields/verse_field.dart';
import 'package:musicaster/app/pages/records/widgets/save_button.dart';
import 'package:musicaster/app/repository/record_repo.dart';
import 'package:provider/provider.dart';

@RoutePage()
class AddRecordView extends StatelessWidget {
  const AddRecordView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: black,
          leading: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              context.read<RecordsRepo>().clean();
              AutoRouter.of(context).removeLast();
            },
            child: SvgPicture.asset('assets/icons/Round Alt Arrow Left.svg', width: 24.h, height: 24.h, fit: BoxFit.none),
          ),
          title: const Text('New record'),
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
            padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 24.h, bottom: 92.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TitleField(),
                const DescriptionField(),
                const MelodyField(),
                Divider(color: greyDark, thickness: 0.2.h, height: 32.h),
                Text('The lyrics of the song', style: context.s16w500.copyWith(color: greyDark)),
                SizedBox(height: 12.h),
                const VerseField(index: 0),
                const ChorusField(),
                if (context.watch<RecordsRepo>().verseLen > 1) ...[
                  for (int i = 1; i < context.read<RecordsRepo>().verseLen; i++) ...[
                    VerseField(index: i),
                  ]
                ],
                const AddVerseButton(),
                SizedBox(height: 24.h),
                const SaveButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
