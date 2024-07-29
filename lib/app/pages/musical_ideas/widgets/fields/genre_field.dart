import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicaster/app/internal/const/colors.dart';
import 'package:musicaster/app/internal/const/ui.dart';
import 'package:musicaster/app/repository/idea_repo.dart';
import 'package:provider/provider.dart';

class GenreField extends StatefulWidget {
  const GenreField({
    super.key,
  });

  @override
  State<GenreField> createState() => _GenreFieldState();
}

class _GenreFieldState extends State<GenreField> {
  late TextEditingController controller;

  @override
  void initState() {
    controller = TextEditingController(text: context.read<IdeaRepo>().genre);
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
            Text('Genre', style: context.s14w500.copyWith(color: greyDark)),
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
                    onChanged: (value) => context.read<IdeaRepo>().genre = value,
                    style: context.s14w400.copyWith(color: black),
                    decoration: InputDecoration.collapsed(
                      border: InputBorder.none,
                      hintText: 'Genre',
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
