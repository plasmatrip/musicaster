import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:musicaster/app/internal/const/colors.dart';
import 'package:musicaster/app/pages/instruments/widgets/fields/description_field.dart';
import 'package:musicaster/app/pages/instruments/widgets/fields/icon_field.dart';
import 'package:musicaster/app/pages/instruments/widgets/fields/instruments_list_field.dart';
import 'package:musicaster/app/pages/instruments/widgets/fields/title_field.dart';
import 'package:musicaster/app/pages/instruments/widgets/fields/type_field.dart';
import 'package:musicaster/app/pages/instruments/widgets/save_button.dart';
import 'package:musicaster/app/repository/instrument_repo.dart';
import 'package:provider/provider.dart';

@RoutePage()
class AddInstrumentView extends StatelessWidget {
  const AddInstrumentView({super.key});

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
              context.read<InstrumentRepo>().clean();
              AutoRouter.of(context).removeLast();
            },
            child: SvgPicture.asset('assets/icons/Round Alt Arrow Left.svg', width: 24.h, height: 24.h, fit: BoxFit.none),
          ),
          title: const Text('New instrument'),
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
                TypeField(),
                IconField(),
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
