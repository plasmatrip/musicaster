import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicaster/app/internal/const/colors.dart';
import 'package:musicaster/app/internal/const/ui.dart';
import 'package:musicaster/app/repository/record_repo.dart';
import 'package:provider/provider.dart';

class ChorusField extends StatefulWidget {
  const ChorusField({
    super.key,
  });

  @override
  State<ChorusField> createState() => _ChorusFieldState();
}

class _ChorusFieldState extends State<ChorusField> {
  late TextEditingController controller;

  @override
  void initState() {
    controller = TextEditingController(text: context.read<RecordsRepo>().chorus);
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
            Text('Chorus', style: context.s14w500.copyWith(color: greyDark)),
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
                  onChanged: (value) => context.read<RecordsRepo>().chorus = value,
                  style: context.s14w400.copyWith(color: black),
                  minLines: 3,
                  maxLines: 6,
                  decoration: InputDecoration.collapsed(
                    border: InputBorder.none,
                    hintText: 'Chorus',
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
