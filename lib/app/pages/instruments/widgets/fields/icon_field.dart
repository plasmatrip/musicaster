import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:musicaster/app/internal/const/colors.dart';
import 'package:musicaster/app/internal/const/ui.dart';
import 'package:musicaster/app/internal/widgets/alert_dialog.dart';
import 'package:musicaster/app/internal/widgets/camera_dialog.dart';
import 'package:musicaster/app/repository/instrument_repo.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

class IconField extends StatelessWidget {
  const IconField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () async {
            final imagePicker = ImagePicker();
            final XFile? image;
            var result = await cameraDialog(context);
            if (result != null) {
              try {
                image = await imagePicker.pickImage(source: result == 'Galery' ? ImageSource.gallery : ImageSource.camera);
                if (image != null) {
                  final Directory applicationDirectory = await getApplicationDocumentsDirectory();
                  final String fileName = '${applicationDirectory.path}/${image.name}';
                  await image.saveTo(fileName);
                  if (context.mounted) {
                    context.read<InstrumentRepo>().icon = image.name;
                  }
                }
              } catch (e) {
                var message = 'Unknown error.';
                if (e is PlatformException) {
                  message = e.message ?? 'Unknown error.';
                }
                if (context.mounted) {
                  result = await alertDialog(context, message);
                }
              }
            }
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Icon', style: context.s14w500.copyWith(color: greyDark)),
              SizedBox(height: 4.h),
              Container(
                width: 335.w,
                height: 40.h,
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                decoration: ShapeDecoration(
                  color: const Color(0xFFD3D3D3),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.h),
                  ),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Select an icon or upload your own',
                        style: context.s14w400.copyWith(color: greyDark),
                      ),
                      SvgPicture.asset('assets/icons/Gallery Download.svg', width: 24.w, height: 24.h),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 16.h),
      ],
    );
  }
}
