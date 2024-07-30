import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:musicaster/app/app.dart';
import 'package:musicaster/app/data/news_data.dart';
import 'package:musicaster/app/internal/const/boxes.dart';
import 'package:musicaster/app/models/idea.dart';
import 'package:musicaster/app/models/instrument.dart';
import 'package:musicaster/app/models/news.dart';
import 'package:musicaster/app/models/record.dart';
import 'package:musicaster/app/models/settings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  Hive.registerAdapter<Settings>(SettingsAdapter());
  Hive.registerAdapter<Idea>(IdeaAdapter());
  Hive.registerAdapter<News>(NewsAdapter());
  Hive.registerAdapter<Instrument>(InstrumentAdapter());
  Hive.registerAdapter<Records>(RecordsAdapter());

  await Hive.openBox<Settings>(Boxes.settings);
  await Hive.openBox<Idea>(Boxes.idea);
  await Hive.openBox<News>(Boxes.news);
  await Hive.openBox<Instrument>(Boxes.instrument);
  await Hive.openBox<Records>(Boxes.records);

  if (Hive.box<News>(Boxes.news).isEmpty) {
    await NewsData.addData();
  }

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (value) => initializeDateFormatting('en', null).then(
      (_) => runApp(
        const App(),
      ),
    ),
  );
}
