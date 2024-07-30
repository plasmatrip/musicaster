import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicaster/app/internal/const/colors.dart';
import 'package:musicaster/app/internal/const/ui.dart';
import 'package:musicaster/app/repository/record_repo.dart';
import 'package:provider/provider.dart';

class DescriptionField extends StatefulWidget {
  const DescriptionField({
    super.key,
  });

  @override
  State<DescriptionField> createState() => _DescriptionFieldState();
}

class _DescriptionFieldState extends State<DescriptionField> {
  late TextEditingController controller;

  @override
  void initState() {
    controller = TextEditingController(text: context.read<RecordsRepo>().description);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Description', style: context.s14w500.copyWith(color: greyDark)),
            SizedBox(height: 4.h),
            Container(
              width: 335.w,
              // height: 40.h,
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
              decoration: ShapeDecoration(
                color: const Color(0xFFD3D3D3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.h),
                ),
              ),
              child: Center(
                child: TextField(
                  controller: controller,
                  onChanged: (value) => context.read<RecordsRepo>().description = value,
                  style: context.s14w400.copyWith(color: black),
                  minLines: 4,
                  maxLines: 8,
                  decoration: InputDecoration.collapsed(
                    border: InputBorder.none,
                    hintText: 'Short description',
                    hintStyle: context.s14w400.copyWith(color: greyDark),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 16.h),
      ],
    );
  }
}
