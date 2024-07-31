import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicaster/app/models/idea.dart';
import 'package:musicaster/app/pages/musical_ideas/widgets/idea_item.dart';
import 'package:musicaster/app/repository/idea_repo.dart';
import 'package:provider/provider.dart';

class IdeaList extends StatelessWidget {
  const IdeaList({super.key});

  @override
  Widget build(BuildContext context) {
    Iterable ideas = context.watch<IdeaRepo>().ideas();
    return ListView.separated(
      padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 24.h, bottom: 92.h),
      itemCount: ideas.length,
      separatorBuilder: (context, index) => SizedBox(height: 16.h),
      itemBuilder: (context, index) {
        Idea idea = ideas.elementAt(index);
        return IdeaItem(idea: idea);
      },
    );
  }
}
