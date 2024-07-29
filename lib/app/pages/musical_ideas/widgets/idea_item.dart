import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:musicaster/app/internal/const/colors.dart';
import 'package:musicaster/app/internal/const/ui.dart';
import 'package:musicaster/app/internal/widgets/custom_container.dart';
import 'package:musicaster/app/internal/widgets/delete_dalog.dart';
import 'package:musicaster/app/internal/widgets/edit_delete_dialog.dart';
import 'package:musicaster/app/models/idea.dart';
import 'package:musicaster/app/repository/idea_repo.dart';
import 'package:musicaster/app/routing/app_router.gr.dart';
import 'package:provider/provider.dart';

class IdeaItem extends StatelessWidget {
  const IdeaItem({
    required this.idea,
    super.key,
  });

  final Idea idea;

  @override
  Widget build(BuildContext context) {
    final GlobalKey globalKey = GlobalKey();
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () async => AutoRouter.of(context).push(SelectedIdeaView(ideaKey: idea.key)),
      child: CustomContainer(
        width: 335.w,
        height: 135.h,
        padding: EdgeInsets.zero,
        child: Stack(
          children: [
            Transform(
              transform: Matrix4.identity()
                ..translate(0.0, 135.h)
                ..rotateZ(-1.57),
              child: Container(
                width: 135.h,
                height: 42.w,
                padding: EdgeInsets.symmetric(horizontal: 9.w),
                decoration: ShapeDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment(1.00, 0.00),
                    end: Alignment(-1, 0),
                    colors: [Color(0xFF363787), Color(0xFF83247C)],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.h),
                  ),
                ),
                child: Center(
                  child: Text(
                    idea.genre,
                    style: context.s20w500.copyWith(color: white),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 42.w,
              top: 0,
              child: Container(
                width: 293.w,
                height: 135.h,
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 221.w,
                      child: Text(
                        idea.title,
                        style: context.s20w600.copyWith(color: black),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(
                      idea.description,
                      style: context.s14w400.copyWith(color: black),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(DateFormat('MMMM dd, y', 'ru').format(idea.date), style: context.s10w400.copyWith(color: greyDark)),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 8.h,
              right: 16.w,
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () async {
                  var result = await editDeleteDialog(context, globalKey);
                  if (context.mounted) {
                    switch (result) {
                      case 'EDIT':
                        context.read<IdeaRepo>().edit(idea.key);
                        AutoRouter.of(context).push(const AddIdeaView());
                      case 'DELETE':
                        var result = await deleteDialog(context, 'Do you really want to delete the record?');
                        if (result == 'DELETE' && context.mounted) {
                          context.read<IdeaRepo>().delete(key: idea.key);
                        }
                    }
                  }
                },
                child: SvgPicture.asset(
                  key: globalKey,
                  'assets/icons/Menu Dots.svg',
                  width: 24.w,
                  height: 24.h,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
