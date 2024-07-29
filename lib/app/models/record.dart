import 'package:hive/hive.dart';

part 'record.g.dart';

@HiveType(typeId: 4)
class Record extends HiveObject {
  @HiveField(0)
  String title;

  @HiveField(1)
  String description;

  @HiveField(2)
  String melody;

  @HiveField(3)
  String chorus;

  @HiveField(4)
  List<String> verse;

  @HiveField(5)
  DateTime date;

  bool isNotEmpty() {
    return title.isNotEmpty && melody.isNotEmpty && chorus.isNotEmpty && verse.isNotEmpty && description.isNotEmpty;
  }

  void clean() {
    title = '';
    melody = '';
    chorus = '';
    verse = [''];
    description = '';
    date = DateTime.now();
  }

  void copy(Record idea) {
    title = idea.title;
    melody = idea.melody;
    chorus = idea.chorus;
    verse = idea.verse;
    description = idea.description;
    date = idea.date;
  }

  static Record create({Record? from}) {
    if (from != null) {
      return Record(
        title: from.title,
        melody: from.melody,
        chorus: from.chorus,
        verse: from.verse,
        description: from.description,
        date: DateTime.now(),
      );
    }
    return Record(title: '', melody: '', chorus: '', verse: [''], description: '', date: DateTime.now());
  }

  Record({
    required this.title,
    required this.melody,
    required this.chorus,
    required this.verse,
    required this.description,
    required this.date,
  });
}
