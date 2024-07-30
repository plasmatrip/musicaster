// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i15;
import 'package:flutter/material.dart' as _i16;
import 'package:musicaster/app/models/news.dart' as _i17;
import 'package:musicaster/app/pages/instruments/add_instrument_view.dart'
    as _i2;
import 'package:musicaster/app/pages/instruments/instruments_view.dart' as _i4;
import 'package:musicaster/app/pages/instruments/selected_instrument_view.dart'
    as _i11;
import 'package:musicaster/app/pages/main_navigation/main_navigation.dart'
    as _i5;
import 'package:musicaster/app/pages/musical_ideas/add_idea_view.dart' as _i1;
import 'package:musicaster/app/pages/musical_ideas/musical_ideas_view.dart'
    as _i6;
import 'package:musicaster/app/pages/musical_ideas/selected_idea_view.dart'
    as _i10;
import 'package:musicaster/app/pages/news/news_view.dart' as _i7;
import 'package:musicaster/app/pages/news/selected_news_view.dart' as _i12;
import 'package:musicaster/app/pages/onboarding/onboarding_view.dart' as _i8;
import 'package:musicaster/app/pages/records/add_record_view.dart' as _i3;
import 'package:musicaster/app/pages/records/records_view.dart' as _i9;
import 'package:musicaster/app/pages/settings/settings_view.dart' as _i13;
import 'package:musicaster/app/pages/spalsh/splash_view.dart' as _i14;

abstract class $AppRouter extends _i15.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i15.PageFactory> pagesMap = {
    AddIdeaView.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AddIdeaView(),
      );
    },
    AddInstrumentView.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AddInstrumentView(),
      );
    },
    AddRecordView.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AddRecordView(),
      );
    },
    InstrumentsView.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.InstrumentsView(),
      );
    },
    MainNavigation.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.MainNavigation(),
      );
    },
    MusicalIdeasView.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.MusicalIdeasView(),
      );
    },
    NewsView.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.NewsView(),
      );
    },
    OnBoardingView.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.OnBoardingView(),
      );
    },
    RecordsView.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.RecordsView(),
      );
    },
    SelectedIdeaView.name: (routeData) {
      final args = routeData.argsAs<SelectedIdeaViewArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.SelectedIdeaView(
          ideaKey: args.ideaKey,
          key: args.key,
        ),
      );
    },
    SelectedInstrumentView.name: (routeData) {
      final args = routeData.argsAs<SelectedInstrumentViewArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.SelectedInstrumentView(
          instrumentKey: args.instrumentKey,
          key: args.key,
        ),
      );
    },
    SelectedNewsView.name: (routeData) {
      final args = routeData.argsAs<SelectedNewsViewArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.SelectedNewsView(
          news: args.news,
          key: args.key,
        ),
      );
    },
    SettingsView.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.SettingsView(),
      );
    },
    SplashView.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.SplashView(),
      );
    },
  };
}

/// generated route for
/// [_i1.AddIdeaView]
class AddIdeaView extends _i15.PageRouteInfo<void> {
  const AddIdeaView({List<_i15.PageRouteInfo>? children})
      : super(
          AddIdeaView.name,
          initialChildren: children,
        );

  static const String name = 'AddIdeaView';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AddInstrumentView]
class AddInstrumentView extends _i15.PageRouteInfo<void> {
  const AddInstrumentView({List<_i15.PageRouteInfo>? children})
      : super(
          AddInstrumentView.name,
          initialChildren: children,
        );

  static const String name = 'AddInstrumentView';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AddRecordView]
class AddRecordView extends _i15.PageRouteInfo<void> {
  const AddRecordView({List<_i15.PageRouteInfo>? children})
      : super(
          AddRecordView.name,
          initialChildren: children,
        );

  static const String name = 'AddRecordView';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i4.InstrumentsView]
class InstrumentsView extends _i15.PageRouteInfo<void> {
  const InstrumentsView({List<_i15.PageRouteInfo>? children})
      : super(
          InstrumentsView.name,
          initialChildren: children,
        );

  static const String name = 'InstrumentsView';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i5.MainNavigation]
class MainNavigation extends _i15.PageRouteInfo<void> {
  const MainNavigation({List<_i15.PageRouteInfo>? children})
      : super(
          MainNavigation.name,
          initialChildren: children,
        );

  static const String name = 'MainNavigation';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i6.MusicalIdeasView]
class MusicalIdeasView extends _i15.PageRouteInfo<void> {
  const MusicalIdeasView({List<_i15.PageRouteInfo>? children})
      : super(
          MusicalIdeasView.name,
          initialChildren: children,
        );

  static const String name = 'MusicalIdeasView';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i7.NewsView]
class NewsView extends _i15.PageRouteInfo<void> {
  const NewsView({List<_i15.PageRouteInfo>? children})
      : super(
          NewsView.name,
          initialChildren: children,
        );

  static const String name = 'NewsView';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i8.OnBoardingView]
class OnBoardingView extends _i15.PageRouteInfo<void> {
  const OnBoardingView({List<_i15.PageRouteInfo>? children})
      : super(
          OnBoardingView.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingView';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i9.RecordsView]
class RecordsView extends _i15.PageRouteInfo<void> {
  const RecordsView({List<_i15.PageRouteInfo>? children})
      : super(
          RecordsView.name,
          initialChildren: children,
        );

  static const String name = 'RecordsView';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i10.SelectedIdeaView]
class SelectedIdeaView extends _i15.PageRouteInfo<SelectedIdeaViewArgs> {
  SelectedIdeaView({
    required int ideaKey,
    _i16.Key? key,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          SelectedIdeaView.name,
          args: SelectedIdeaViewArgs(
            ideaKey: ideaKey,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SelectedIdeaView';

  static const _i15.PageInfo<SelectedIdeaViewArgs> page =
      _i15.PageInfo<SelectedIdeaViewArgs>(name);
}

class SelectedIdeaViewArgs {
  const SelectedIdeaViewArgs({
    required this.ideaKey,
    this.key,
  });

  final int ideaKey;

  final _i16.Key? key;

  @override
  String toString() {
    return 'SelectedIdeaViewArgs{ideaKey: $ideaKey, key: $key}';
  }
}

/// generated route for
/// [_i11.SelectedInstrumentView]
class SelectedInstrumentView
    extends _i15.PageRouteInfo<SelectedInstrumentViewArgs> {
  SelectedInstrumentView({
    required int instrumentKey,
    _i16.Key? key,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          SelectedInstrumentView.name,
          args: SelectedInstrumentViewArgs(
            instrumentKey: instrumentKey,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SelectedInstrumentView';

  static const _i15.PageInfo<SelectedInstrumentViewArgs> page =
      _i15.PageInfo<SelectedInstrumentViewArgs>(name);
}

class SelectedInstrumentViewArgs {
  const SelectedInstrumentViewArgs({
    required this.instrumentKey,
    this.key,
  });

  final int instrumentKey;

  final _i16.Key? key;

  @override
  String toString() {
    return 'SelectedInstrumentViewArgs{instrumentKey: $instrumentKey, key: $key}';
  }
}

/// generated route for
/// [_i12.SelectedNewsView]
class SelectedNewsView extends _i15.PageRouteInfo<SelectedNewsViewArgs> {
  SelectedNewsView({
    required _i17.News news,
    _i16.Key? key,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          SelectedNewsView.name,
          args: SelectedNewsViewArgs(
            news: news,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SelectedNewsView';

  static const _i15.PageInfo<SelectedNewsViewArgs> page =
      _i15.PageInfo<SelectedNewsViewArgs>(name);
}

class SelectedNewsViewArgs {
  const SelectedNewsViewArgs({
    required this.news,
    this.key,
  });

  final _i17.News news;

  final _i16.Key? key;

  @override
  String toString() {
    return 'SelectedNewsViewArgs{news: $news, key: $key}';
  }
}

/// generated route for
/// [_i13.SettingsView]
class SettingsView extends _i15.PageRouteInfo<void> {
  const SettingsView({List<_i15.PageRouteInfo>? children})
      : super(
          SettingsView.name,
          initialChildren: children,
        );

  static const String name = 'SettingsView';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i14.SplashView]
class SplashView extends _i15.PageRouteInfo<void> {
  const SplashView({List<_i15.PageRouteInfo>? children})
      : super(
          SplashView.name,
          initialChildren: children,
        );

  static const String name = 'SplashView';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}
