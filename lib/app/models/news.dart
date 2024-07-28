import 'package:hive/hive.dart';

part 'news.g.dart';

@HiveType(typeId: 2)
class News extends HiveObject {
  @HiveField(0)
  String image;

  @HiveField(1)
  String tag;

  @HiveField(2)
  String title;

  @HiveField(3)
  List<String> content;

  @HiveField(4)
  String time;

  News({
    required this.image,
    required this.tag,
    required this.title,
    required this.content,
    required this.time,
  });
}
