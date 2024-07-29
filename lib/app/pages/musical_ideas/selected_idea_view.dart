import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:musicaster/app/internal/const/colors.dart';
import 'package:musicaster/app/internal/const/ui.dart';
import 'package:musicaster/app/internal/widgets/custom_container.dart';
import 'package:musicaster/app/models/idea.dart';
import 'package:musicaster/app/repository/idea_repo.dart';
import 'package:musicaster/app/routing/app_router.gr.dart';
import 'package:provider/provider.dart';

@RoutePage()
class SelectedIdeaView extends StatelessWidget {
  const SelectedIdeaView({required this.ideaKey, super.key});

  final int ideaKey;

  @override
  Widget build(BuildContext context) {
    Idea idea = context.watch<IdeaRepo>().repo.get(ideaKey);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: black,
        leading: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => AutoRouter.of(context).removeLast(),
          child: SvgPicture.asset('assets/icons/Round Alt Arrow Left.svg', width: 24.h, height: 24.h, fit: BoxFit.none),
        ),
        title: Text(idea.title),
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(8.h),
            bottomRight: Radius.circular(8.h),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () async {
                context.read<IdeaRepo>().edit(idea.key);
                AutoRouter.of(context).push(const AddIdeaView());
              },
              child: SvgPicture.asset('assets/icons/edit_pen.svg', width: 24.w, height: 24.h),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 24.h, bottom: 94.h),
          child: CustomContainer(
            width: 335.w,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(idea.description, style: context.s14w400.copyWith(color: black)),
                SizedBox(height: 16.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Genre', style: context.s14w500.copyWith(color: greyDark)),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: Text(
                        idea.genre,
                        style: context.s16w500.copyWith(color: black),
                        textAlign: TextAlign.right,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text('Instruments', style: context.s14w500.copyWith(color: greyDark)),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          if (idea.instruments.isNotEmpty) ...[
                            Text(
                              idea.instruments,
                              style: context.s16w500.copyWith(color: black),
                            ),
                          ],
                          Wrap(
                            alignment: WrapAlignment.end,
                            spacing: 4.w,
                            runSpacing: 4.h,
                            children: [
                              for (int i in idea.instrumentsList) ...[
                                SvgPicture.asset('assets/icons/instruments/${i}on.svg'),
                              ],
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
