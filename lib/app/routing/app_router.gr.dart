// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;
import 'package:musicaster/app/models/news.dart' as _i14;
import 'package:musicaster/app/pages/instruments/instruments_view.dart' as _i2;
import 'package:musicaster/app/pages/main_navigation/main_navigation.dart'
    as _i3;
import 'package:musicaster/app/pages/musical_ideas/add_idea_view.dart' as _i1;
import 'package:musicaster/app/pages/musical_ideas/musical_ideas_view.dart'
    as _i4;
import 'package:musicaster/app/pages/musical_ideas/selected_idea_view.dart'
    as _i8;
import 'package:musicaster/app/pages/news/news_view.dart' as _i5;
import 'package:musicaster/app/pages/news/selected_news_view.dart' as _i9;
import 'package:musicaster/app/pages/onboarding/onboarding_view.dart' as _i6;
import 'package:musicaster/app/pages/records/records_view.dart' as _i7;
import 'package:musicaster/app/pages/settings/settings_view.dart' as _i10;
import 'package:musicaster/app/pages/spalsh/splash_view.dart' as _i11;

abstract class $AppRouter extends _i12.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    AddIdeaView.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AddIdeaView(),
      );
    },
    InstrumentsView.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.InstrumentsView(),
      );
    },
    MainNavigation.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.MainNavigation(),
      );
    },
    MusicalIdeasView.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.MusicalIdeasView(),
      );
    },
    NewsView.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.NewsView(),
      );
    },
    OnBoardingView.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.OnBoardingView(),
      );
    },
    RecordsView.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.RecordsView(),
      );
    },
    SelectedIdeaView.name: (routeData) {
      final args = routeData.argsAs<SelectedIdeaViewArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.SelectedIdeaView(
          ideaKey: args.ideaKey,
          key: args.key,
        ),
      );
    },
    SelectedNewsView.name: (routeData) {
      final args = routeData.argsAs<SelectedNewsViewArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.SelectedNewsView(
          news: args.news,
          key: args.key,
        ),
      );
    },
    SettingsView.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.SettingsView(),
      );
    },
    SplashView.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.SplashView(),
      );
    },
  };
}

/// generated route for
/// [_i1.AddIdeaView]
class AddIdeaView extends _i12.PageRouteInfo<void> {
  const AddIdeaView({List<_i12.PageRouteInfo>? children})
      : super(
          AddIdeaView.name,
          initialChildren: children,
        );

  static const String name = 'AddIdeaView';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i2.InstrumentsView]
class InstrumentsView extends _i12.PageRouteInfo<void> {
  const InstrumentsView({List<_i12.PageRouteInfo>? children})
      : super(
          InstrumentsView.name,
          initialChildren: children,
        );

  static const String name = 'InstrumentsView';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i3.MainNavigation]
class MainNavigation extends _i12.PageRouteInfo<void> {
  const MainNavigation({List<_i12.PageRouteInfo>? children})
      : super(
          MainNavigation.name,
          initialChildren: children,
        );

  static const String name = 'MainNavigation';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i4.MusicalIdeasView]
class MusicalIdeasView extends _i12.PageRouteInfo<void> {
  const MusicalIdeasView({List<_i12.PageRouteInfo>? children})
      : super(
          MusicalIdeasView.name,
          initialChildren: children,
        );

  static const String name = 'MusicalIdeasView';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i5.NewsView]
class NewsView extends _i12.PageRouteInfo<void> {
  const NewsView({List<_i12.PageRouteInfo>? children})
      : super(
          NewsView.name,
          initialChildren: children,
        );

  static const String name = 'NewsView';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i6.OnBoardingView]
class OnBoardingView extends _i12.PageRouteInfo<void> {
  const OnBoardingView({List<_i12.PageRouteInfo>? children})
      : super(
          OnBoardingView.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingView';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i7.RecordsView]
class RecordsView extends _i12.PageRouteInfo<void> {
  const RecordsView({List<_i12.PageRouteInfo>? children})
      : super(
          RecordsView.name,
          initialChildren: children,
        );

  static const String name = 'RecordsView';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i8.SelectedIdeaView]
class SelectedIdeaView extends _i12.PageRouteInfo<SelectedIdeaViewArgs> {
  SelectedIdeaView({
    required int ideaKey,
    _i13.Key? key,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          SelectedIdeaView.name,
          args: SelectedIdeaViewArgs(
            ideaKey: ideaKey,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SelectedIdeaView';

  static const _i12.PageInfo<SelectedIdeaViewArgs> page =
      _i12.PageInfo<SelectedIdeaViewArgs>(name);
}

class SelectedIdeaViewArgs {
  const SelectedIdeaViewArgs({
    required this.ideaKey,
    this.key,
  });

  final int ideaKey;

  final _i13.Key? key;

  @override
  String toString() {
    return 'SelectedIdeaViewArgs{ideaKey: $ideaKey, key: $key}';
  }
}

/// generated route for
/// [_i9.SelectedNewsView]
class SelectedNewsView extends _i12.PageRouteInfo<SelectedNewsViewArgs> {
  SelectedNewsView({
    required _i14.News news,
    _i13.Key? key,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          SelectedNewsView.name,
          args: SelectedNewsViewArgs(
            news: news,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SelectedNewsView';

  static const _i12.PageInfo<SelectedNewsViewArgs> page =
      _i12.PageInfo<SelectedNewsViewArgs>(name);
}

class SelectedNewsViewArgs {
  const SelectedNewsViewArgs({
    required this.news,
    this.key,
  });

  final _i14.News news;

  final _i13.Key? key;

  @override
  String toString() {
    return 'SelectedNewsViewArgs{news: $news, key: $key}';
  }
}

/// generated route for
/// [_i10.SettingsView]
class SettingsView extends _i12.PageRouteInfo<void> {
  const SettingsView({List<_i12.PageRouteInfo>? children})
      : super(
          SettingsView.name,
          initialChildren: children,
        );

  static const String name = 'SettingsView';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i11.SplashView]
class SplashView extends _i12.PageRouteInfo<void> {
  const SplashView({List<_i12.PageRouteInfo>? children})
      : super(
          SplashView.name,
          initialChildren: children,
        );

  static const String name = 'SplashView';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}
