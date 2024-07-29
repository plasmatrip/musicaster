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
  List<int> instrumentsList;

  @HiveField(4)
  String description;

  @HiveField(5)
  DateTime date;

  bool isNotEmpty() {
    return title.isNotEmpty && genre.isNotEmpty && (instruments.isNotEmpty || instrumentsList.isNotEmpty) && description.isNotEmpty;
  }

  void clean() {
    title = '';
    genre = '';
    instruments = '';
    instrumentsList = [];
    description = '';
    date = DateTime.now();
  }

  void copy(Idea idea) {
    title = idea.title;
    genre = idea.genre;
    instruments = idea.instruments;
    instrumentsList = idea.instrumentsList;
    description = idea.description;
    date = idea.date;
  }

  static Idea create({Idea? from}) {
    if (from != null) {
      return Idea(
        title: from.title,
        genre: from.genre,
        instruments: from.instruments,
        instrumentsList: from.instrumentsList,
        description: from.description,
        date: DateTime.now(),
      );
    }
    return Idea(title: '', genre: '', instruments: '', instrumentsList: [], description: '', date: DateTime.now());
  }

  Idea({
    required this.title,
    required this.genre,
    required this.instruments,
    required this.instrumentsList,
    required this.description,
    required this.date,
  });
}
