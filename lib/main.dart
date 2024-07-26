import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:musicaster/app/app.dart';
import 'package:musicaster/app/internal/const/boxes.dart';
import 'package:musicaster/app/models/settings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  Hive.registerAdapter<Settings>(SettingsAdapter());

  await Hive.openBox<Settings>(Boxes.settings);

  // if (Hive.box<Celestial>(Boxes.celestial).isEmpty) {
  //   await CelestialData.addData();
  // }

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (value) => initializeDateFormatting('en', null).then(
      (_) => runApp(
        const App(),
      ),
    ),
  );
}
