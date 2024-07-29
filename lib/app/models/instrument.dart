import 'package:hive/hive.dart';

part 'instrument.g.dart';

@HiveType(typeId: 3)
class Instrument extends HiveObject {
  @HiveField(0)
  String title;

  @HiveField(1)
  String type;

  @HiveField(2)
  String icon;

  @HiveField(3)
  String description;

  @HiveField(4)
  int instrumentId;

  bool isNotEmpty() {
    return title.isNotEmpty && type.isNotEmpty && (icon.isNotEmpty || instrumentId != 0) && description.isNotEmpty;
  }

  void clean() {
    title = '';
    type = '';
    icon = '';
    description = '';
    instrumentId = 0;
  }

  void copy(Instrument instrument) {
    title = instrument.title;
    type = instrument.type;
    icon = instrument.icon;
    description = instrument.description;
    instrumentId = instrument.instrumentId;
  }

  static Instrument create({Instrument? from}) {
    if (from != null) {
      return Instrument(
        title: from.title,
        type: from.type,
        icon: from.icon,
        description: from.description,
        instrumentId: from.instrumentId,
      );
    }
    return Instrument(title: '', type: '', icon: '', description: '', instrumentId: 0);
  }

  Instrument({
    required this.title,
    required this.type,
    required this.icon,
    required this.description,
    required this.instrumentId,
  });
}
