// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i14;
import 'package:flutter/material.dart' as _i15;
import 'package:musicaster/app/models/news.dart' as _i16;
import 'package:musicaster/app/pages/instruments/add_instrument_view.dart'
    as _i2;
import 'package:musicaster/app/pages/instruments/instruments_view.dart' as _i3;
import 'package:musicaster/app/pages/instruments/selected_instrument_view.dart'
    as _i10;
import 'package:musicaster/app/pages/main_navigation/main_navigation.dart'
    as _i4;
import 'package:musicaster/app/pages/musical_ideas/add_idea_view.dart' as _i1;
import 'package:musicaster/app/pages/musical_ideas/musical_ideas_view.dart'
    as _i5;
import 'package:musicaster/app/pages/musical_ideas/selected_idea_view.dart'
    as _i9;
import 'package:musicaster/app/pages/news/news_view.dart' as _i6;
import 'package:musicaster/app/pages/news/selected_news_view.dart' as _i11;
import 'package:musicaster/app/pages/onboarding/onboarding_view.dart' as _i7;
import 'package:musicaster/app/pages/records/records_view.dart' as _i8;
import 'package:musicaster/app/pages/settings/settings_view.dart' as _i12;
import 'package:musicaster/app/pages/spalsh/splash_view.dart' as _i13;

abstract class $AppRouter extends _i14.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    AddIdeaView.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AddIdeaView(),
      );
    },
    AddInstrumentView.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AddInstrumentView(),
      );
    },
    InstrumentsView.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.InstrumentsView(),
      );
    },
    MainNavigation.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.MainNavigation(),
      );
    },
    MusicalIdeasView.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.MusicalIdeasView(),
      );
    },
    NewsView.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.NewsView(),
      );
    },
    OnBoardingView.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.OnBoardingView(),
      );
    },
    RecordsView.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.RecordsView(),
      );
    },
    SelectedIdeaView.name: (routeData) {
      final args = routeData.argsAs<SelectedIdeaViewArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.SelectedIdeaView(
          ideaKey: args.ideaKey,
          key: args.key,
        ),
      );
    },
    SelectedInstrumentView.name: (routeData) {
      final args = routeData.argsAs<SelectedInstrumentViewArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.SelectedInstrumentView(
          instrumentKey: args.instrumentKey,
          key: args.key,
        ),
      );
    },
    SelectedNewsView.name: (routeData) {
      final args = routeData.argsAs<SelectedNewsViewArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.SelectedNewsView(
          news: args.news,
          key: args.key,
        ),
      );
    },
    SettingsView.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.SettingsView(),
      );
    },
    SplashView.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.SplashView(),
      );
    },
  };
}

/// generated route for
/// [_i1.AddIdeaView]
class AddIdeaView extends _i14.PageRouteInfo<void> {
  const AddIdeaView({List<_i14.PageRouteInfo>? children})
      : super(
          AddIdeaView.name,
          initialChildren: children,
        );

  static const String name = 'AddIdeaView';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AddInstrumentView]
class AddInstrumentView extends _i14.PageRouteInfo<void> {
  const AddInstrumentView({List<_i14.PageRouteInfo>? children})
      : super(
          AddInstrumentView.name,
          initialChildren: children,
        );

  static const String name = 'AddInstrumentView';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i3.InstrumentsView]
class InstrumentsView extends _i14.PageRouteInfo<void> {
  const InstrumentsView({List<_i14.PageRouteInfo>? children})
      : super(
          InstrumentsView.name,
          initialChildren: children,
        );

  static const String name = 'InstrumentsView';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i4.MainNavigation]
class MainNavigation extends _i14.PageRouteInfo<void> {
  const MainNavigation({List<_i14.PageRouteInfo>? children})
      : super(
          MainNavigation.name,
          initialChildren: children,
        );

  static const String name = 'MainNavigation';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i5.MusicalIdeasView]
class MusicalIdeasView extends _i14.PageRouteInfo<void> {
  const MusicalIdeasView({List<_i14.PageRouteInfo>? children})
      : super(
          MusicalIdeasView.name,
          initialChildren: children,
        );

  static const String name = 'MusicalIdeasView';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i6.NewsView]
class NewsView extends _i14.PageRouteInfo<void> {
  const NewsView({List<_i14.PageRouteInfo>? children})
      : super(
          NewsView.name,
          initialChildren: children,
        );

  static const String name = 'NewsView';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i7.OnBoardingView]
class OnBoardingView extends _i14.PageRouteInfo<void> {
  const OnBoardingView({List<_i14.PageRouteInfo>? children})
      : super(
          OnBoardingView.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingView';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i8.RecordsView]
class RecordsView extends _i14.PageRouteInfo<void> {
  const RecordsView({List<_i14.PageRouteInfo>? children})
      : super(
          RecordsView.name,
          initialChildren: children,
        );

  static const String name = 'RecordsView';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SelectedIdeaView]
class SelectedIdeaView extends _i14.PageRouteInfo<SelectedIdeaViewArgs> {
  SelectedIdeaView({
    required int ideaKey,
    _i15.Key? key,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          SelectedIdeaView.name,
          args: SelectedIdeaViewArgs(
            ideaKey: ideaKey,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SelectedIdeaView';

  static const _i14.PageInfo<SelectedIdeaViewArgs> page =
      _i14.PageInfo<SelectedIdeaViewArgs>(name);
}

class SelectedIdeaViewArgs {
  const SelectedIdeaViewArgs({
    required this.ideaKey,
    this.key,
  });

  final int ideaKey;

  final _i15.Key? key;

  @override
  String toString() {
    return 'SelectedIdeaViewArgs{ideaKey: $ideaKey, key: $key}';
  }
}

/// generated route for
/// [_i10.SelectedInstrumentView]
class SelectedInstrumentView
    extends _i14.PageRouteInfo<SelectedInstrumentViewArgs> {
  SelectedInstrumentView({
    required int instrumentKey,
    _i15.Key? key,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          SelectedInstrumentView.name,
          args: SelectedInstrumentViewArgs(
            instrumentKey: instrumentKey,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SelectedInstrumentView';

  static const _i14.PageInfo<SelectedInstrumentViewArgs> page =
      _i14.PageInfo<SelectedInstrumentViewArgs>(name);
}

class SelectedInstrumentViewArgs {
  const SelectedInstrumentViewArgs({
    required this.instrumentKey,
    this.key,
  });

  final int instrumentKey;

  final _i15.Key? key;

  @override
  String toString() {
    return 'SelectedInstrumentViewArgs{instrumentKey: $instrumentKey, key: $key}';
  }
}

/// generated route for
/// [_i11.SelectedNewsView]
class SelectedNewsView extends _i14.PageRouteInfo<SelectedNewsViewArgs> {
  SelectedNewsView({
    required _i16.News news,
    _i15.Key? key,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          SelectedNewsView.name,
          args: SelectedNewsViewArgs(
            news: news,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SelectedNewsView';

  static const _i14.PageInfo<SelectedNewsViewArgs> page =
      _i14.PageInfo<SelectedNewsViewArgs>(name);
}

class SelectedNewsViewArgs {
  const SelectedNewsViewArgs({
    required this.news,
    this.key,
  });

  final _i16.News news;

  final _i15.Key? key;

  @override
  String toString() {
    return 'SelectedNewsViewArgs{news: $news, key: $key}';
  }
}

/// generated route for
/// [_i12.SettingsView]
class SettingsView extends _i14.PageRouteInfo<void> {
  const SettingsView({List<_i14.PageRouteInfo>? children})
      : super(
          SettingsView.name,
          initialChildren: children,
        );

  static const String name = 'SettingsView';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i13.SplashView]
class SplashView extends _i14.PageRouteInfo<void> {
  const SplashView({List<_i14.PageRouteInfo>? children})
      : super(
          SplashView.name,
          initialChildren: children,
        );

  static const String name = 'SplashView';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}
