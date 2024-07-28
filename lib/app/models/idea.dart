import 'package:hive/hive.dart';

part 'idea.g.dart';

@HiveType(typeId: 1)
class Idea extends HiveObject {
  @HiveField(0)
  String title;

  @HiveField(1)
  String genre;

  @HiveField(2)
  String instruments;

  @HiveField(3)
  List<String> instrumentsList;

  @HiveField(4)
  String description;

  bool isNotEmpty() {
    return title.isNotEmpty && genre.isNotEmpty && (instruments.isEmpty || instrumentsList.isNotEmpty) && description.isNotEmpty;
  }

  void clean() {
    title = '';
    genre = '';
    instruments = '';
    instrumentsList = [''];
    description = '';
  }

  void copy(Idea idea) {
    title = idea.title;
    genre = idea.genre;
    instruments = idea.instruments;
    instrumentsList = idea.instrumentsList;
    description = idea.description;
  }

  static Idea create({Idea? from}) {
    if (from != null) {
      return Idea(
        title: from.title,
        genre: from.genre,
        instruments: from.instruments,
        instrumentsList: from.instrumentsList,
        description: from.description,
      );
    }
    return Idea(title: '', genre: '', instruments: '', instrumentsList: [''], description: '');
  }

  Idea({
    required this.title,
    required this.genre,
    required this.instruments,
    required this.instrumentsList,
    required this.description,
  });
}
