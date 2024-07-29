import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:musicaster/app/pages/musical_ideas/widgets/empty_idea.dart';
import 'package:musicaster/app/pages/musical_ideas/widgets/idea_list.dart';
import 'package:musicaster/app/repository/idea_repo.dart';
import 'package:provider/provider.dart';

@RoutePage()
class MusicalIdeasView extends StatelessWidget {
  const MusicalIdeasView({super.key});

  @override
  Widget build(BuildContext context) {
    return context.watch<IdeaRepo>().repo.isEmpty ? const EmptyIdea() : const IdeaList();
  }
}
