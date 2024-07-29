import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicaster/app/internal/const/colors.dart';
import 'package:musicaster/app/internal/const/ui.dart';
import 'package:musicaster/app/repository/idea_repo.dart';
import 'package:provider/provider.dart';

class InstrumentsField extends StatefulWidget {
  const InstrumentsField({
    super.key,
  });

  @override
  State<InstrumentsField> createState() => _InstrumentsFieldState();
}

class _InstrumentsFieldState extends State<InstrumentsField> {
  late TextEditingController controller;

  @override
  void initState() {
    controller = TextEditingController(text: context.read<IdeaRepo>().instruments);
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
            Text('Instruments', style: context.s14w500.copyWith(color: greyDark)),
            SizedBox(height: 4.h),
            Container(
              width: 335.w,
              height: 40.h,
              decoration: ShapeDecoration(
                color: const Color(0xFFD3D3D3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.h),
                ),
              ),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: TextField(
                    controller: controller,
                    onChanged: (value) => context.read<IdeaRepo>().instruments = value,
                    style: context.s14w400.copyWith(color: black),
                    decoration: InputDecoration.collapsed(
                      border: InputBorder.none,
                      hintText: 'Write or mark from the list',
                      hintStyle: context.s14w400.copyWith(color: greyDark),
                    ),
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
