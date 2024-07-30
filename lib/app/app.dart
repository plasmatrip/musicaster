import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:musicaster/app/internal/const/colors.dart';
import 'package:musicaster/app/internal/const/ui.dart';
import 'package:musicaster/app/repository/idea_repo.dart';
import 'package:musicaster/app/repository/instrument_repo.dart';
import 'package:musicaster/app/repository/record_repo.dart';
import 'package:musicaster/app/routing/app_router.dart';
import 'package:provider/provider.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final appRouter = AppRouter();

  @override
  void dispose() async {
    await Hive.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => IdeaRepo()),
          ChangeNotifierProvider(create: (context) => InstrumentRepo()),
          ChangeNotifierProvider(create: (context) => RecordsRepo()),
        ],
        builder: (context, child) {
          return DevicePreview(
              enabled: !kReleaseMode,
              builder: (context) {
                return ScreenUtilInit(
                  designSize: const Size(375, 812),
                  builder: (context, child) {
                    debugPaintSizeEnabled = false;
                    return MaterialApp.router(
                      debugShowCheckedModeBanner: false,
                      title: 'Musicaster',
                      localizationsDelegates: const [
                        GlobalMaterialLocalizations.delegate,
                        GlobalCupertinoLocalizations.delegate,
                        GlobalWidgetsLocalizations.delegate
                      ],
                      supportedLocales: const [Locale('en', 'EN')],
                      theme: ThemeData(
                        scaffoldBackgroundColor: bg,
                        appBarTheme: AppBarTheme(
                          backgroundColor: bg,
                          centerTitle: false,
                          titleTextStyle: context.s19w800.copyWith(color: white),
                        ),
                        useMaterial3: true,
                      ),
                      routerConfig: appRouter.config(),
                    );
                  },
                );
              });
        });
  }
}
