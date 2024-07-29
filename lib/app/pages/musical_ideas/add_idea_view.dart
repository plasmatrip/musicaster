import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:musicaster/app/internal/const/colors.dart';
import 'package:musicaster/app/pages/musical_ideas/widgets/fields/description_field.dart';
import 'package:musicaster/app/pages/musical_ideas/widgets/fields/genre_field.dart';
import 'package:musicaster/app/pages/musical_ideas/widgets/fields/instruments_field.dart';
import 'package:musicaster/app/pages/musical_ideas/widgets/fields/instruments_list_field.dart';
import 'package:musicaster/app/pages/musical_ideas/widgets/fields/title_field.dart';
import 'package:musicaster/app/pages/musical_ideas/widgets/save_button.dart';
import 'package:musicaster/app/repository/idea_repo.dart';
import 'package:provider/provider.dart';

@RoutePage()
class AddIdeaView extends StatelessWidget {
  const AddIdeaView({super.key});

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
              context.read<IdeaRepo>().clean();
              AutoRouter.of(context).removeLast();
            },
            child: SvgPicture.asset('assets/icons/Round Alt Arrow Left.svg', width: 24.h, height: 24.h, fit: BoxFit.none),
          ),
          title: const Text('New idea'),
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
            child: const Column(
              children: [
                TitleField(),
                GenreField(),
                InstrumentsField(),
                InstrumentsListField(),
                DescriptionField(),
                SaveButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
