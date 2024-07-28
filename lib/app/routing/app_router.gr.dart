// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i12;
import 'package:musicaster/app/models/news.dart' as _i11;
import 'package:musicaster/app/pages/instruments/instruments_view.dart' as _i1;
import 'package:musicaster/app/pages/main_navigation/main_navigation.dart'
    as _i2;
import 'package:musicaster/app/pages/musical_ideas/musical_ideas_view.dart'
    as _i3;
import 'package:musicaster/app/pages/news/news_view.dart' as _i4;
import 'package:musicaster/app/pages/news/selected_news_view.dart' as _i7;
import 'package:musicaster/app/pages/onboarding/onboarding_view.dart' as _i5;
import 'package:musicaster/app/pages/records/records_view.dart' as _i6;
import 'package:musicaster/app/pages/settings/settings_view.dart' as _i8;
import 'package:musicaster/app/pages/spalsh/splash_view.dart' as _i9;

abstract class $AppRouter extends _i10.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    InstrumentsView.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.InstrumentsView(),
      );
    },
    MainNavigation.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.MainNavigation(),
      );
    },
    MusicalIdeasView.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.MusicalIdeasView(),
      );
    },
    NewsView.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.NewsView(),
      );
    },
    OnBoardingView.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.OnBoardingView(),
      );
    },
    RecordsView.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.RecordsView(),
      );
    },
    SelectedNewsView.name: (routeData) {
      final args = routeData.argsAs<SelectedNewsViewArgs>();
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.SelectedNewsView(
          news: args.news,
          key: args.key,
        ),
      );
    },
    SettingsView.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SettingsView(),
      );
    },
    SplashView.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SplashView(),
      );
    },
  };
}

/// generated route for
/// [_i1.InstrumentsView]
class InstrumentsView extends _i10.PageRouteInfo<void> {
  const InstrumentsView({List<_i10.PageRouteInfo>? children})
      : super(
          InstrumentsView.name,
          initialChildren: children,
        );

  static const String name = 'InstrumentsView';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i2.MainNavigation]
class MainNavigation extends _i10.PageRouteInfo<void> {
  const MainNavigation({List<_i10.PageRouteInfo>? children})
      : super(
          MainNavigation.name,
          initialChildren: children,
        );

  static const String name = 'MainNavigation';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i3.MusicalIdeasView]
class MusicalIdeasView extends _i10.PageRouteInfo<void> {
  const MusicalIdeasView({List<_i10.PageRouteInfo>? children})
      : super(
          MusicalIdeasView.name,
          initialChildren: children,
        );

  static const String name = 'MusicalIdeasView';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i4.NewsView]
class NewsView extends _i10.PageRouteInfo<void> {
  const NewsView({List<_i10.PageRouteInfo>? children})
      : super(
          NewsView.name,
          initialChildren: children,
        );

  static const String name = 'NewsView';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i5.OnBoardingView]
class OnBoardingView extends _i10.PageRouteInfo<void> {
  const OnBoardingView({List<_i10.PageRouteInfo>? children})
      : super(
          OnBoardingView.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingView';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i6.RecordsView]
class RecordsView extends _i10.PageRouteInfo<void> {
  const RecordsView({List<_i10.PageRouteInfo>? children})
      : super(
          RecordsView.name,
          initialChildren: children,
        );

  static const String name = 'RecordsView';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i7.SelectedNewsView]
class SelectedNewsView extends _i10.PageRouteInfo<SelectedNewsViewArgs> {
  SelectedNewsView({
    required _i11.News news,
    _i12.Key? key,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          SelectedNewsView.name,
          args: SelectedNewsViewArgs(
            news: news,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SelectedNewsView';

  static const _i10.PageInfo<SelectedNewsViewArgs> page =
      _i10.PageInfo<SelectedNewsViewArgs>(name);
}

class SelectedNewsViewArgs {
  const SelectedNewsViewArgs({
    required this.news,
    this.key,
  });

  final _i11.News news;

  final _i12.Key? key;

  @override
  String toString() {
    return 'SelectedNewsViewArgs{news: $news, key: $key}';
  }
}

/// generated route for
/// [_i8.SettingsView]
class SettingsView extends _i10.PageRouteInfo<void> {
  const SettingsView({List<_i10.PageRouteInfo>? children})
      : super(
          SettingsView.name,
          initialChildren: children,
        );

  static const String name = 'SettingsView';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SplashView]
class SplashView extends _i10.PageRouteInfo<void> {
  const SplashView({List<_i10.PageRouteInfo>? children})
      : super(
          SplashView.name,
          initialChildren: children,
        );

  static const String name = 'SplashView';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}
