// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:my_movie_app/presentation/presentation.dart' as _i10;
import 'package:my_movie_app/presentation/ui/home/home_screen.dart' as _i2;
import 'package:my_movie_app/presentation/ui/image_detail/image_detail_screen.dart'
    as _i3;
import 'package:my_movie_app/presentation/ui/main/main_screen.dart' as _i4;
import 'package:my_movie_app/presentation/ui/movie_detail/casts_screen.dart'
    as _i1;
import 'package:my_movie_app/presentation/ui/movie_detail/movie_detail_screen.dart'
    as _i5;
import 'package:my_movie_app/presentation/ui/movie_detail/movie_list_screen.dart'
    as _i6;
import 'package:my_movie_app/presentation/ui/people_detail/people_detail_screen.dart'
    as _i7;

/// generated route for
/// [_i1.CastsScreen]
class CastsRoute extends _i8.PageRouteInfo<CastsRouteArgs> {
  CastsRoute({
    _i9.Key? key,
    required List<_i10.PersonVo> casts,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          CastsRoute.name,
          args: CastsRouteArgs(
            key: key,
            casts: casts,
          ),
          initialChildren: children,
        );

  static const String name = 'CastsRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CastsRouteArgs>();
      return _i1.CastsScreen(
        key: args.key,
        casts: args.casts,
      );
    },
  );
}

class CastsRouteArgs {
  const CastsRouteArgs({
    this.key,
    required this.casts,
  });

  final _i9.Key? key;

  final List<_i10.PersonVo> casts;

  @override
  String toString() {
    return 'CastsRouteArgs{key: $key, casts: $casts}';
  }
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomeScreen();
    },
  );
}

/// generated route for
/// [_i3.ImageDetailScreen]
class ImageDetailRoute extends _i8.PageRouteInfo<ImageDetailRouteArgs> {
  ImageDetailRoute({
    _i9.Key? key,
    required List<_i10.PosterVo> gallery,
    required int selectedIndex,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          ImageDetailRoute.name,
          args: ImageDetailRouteArgs(
            key: key,
            gallery: gallery,
            selectedIndex: selectedIndex,
          ),
          initialChildren: children,
        );

  static const String name = 'ImageDetailRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ImageDetailRouteArgs>();
      return _i3.ImageDetailScreen(
        key: args.key,
        gallery: args.gallery,
        selectedIndex: args.selectedIndex,
      );
    },
  );
}

class ImageDetailRouteArgs {
  const ImageDetailRouteArgs({
    this.key,
    required this.gallery,
    required this.selectedIndex,
  });

  final _i9.Key? key;

  final List<_i10.PosterVo> gallery;

  final int selectedIndex;

  @override
  String toString() {
    return 'ImageDetailRouteArgs{key: $key, gallery: $gallery, selectedIndex: $selectedIndex}';
  }
}

/// generated route for
/// [_i4.MainScreen]
class MainRoute extends _i8.PageRouteInfo<void> {
  const MainRoute({List<_i8.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i4.MainScreen();
    },
  );
}

/// generated route for
/// [_i5.MovieDetailScreen]
class MovieDetailRoute extends _i8.PageRouteInfo<MovieDetailRouteArgs> {
  MovieDetailRoute({
    _i9.Key? key,
    required int movieId,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          MovieDetailRoute.name,
          args: MovieDetailRouteArgs(
            key: key,
            movieId: movieId,
          ),
          initialChildren: children,
        );

  static const String name = 'MovieDetailRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MovieDetailRouteArgs>();
      return _i5.MovieDetailScreen(
        key: args.key,
        movieId: args.movieId,
      );
    },
  );
}

class MovieDetailRouteArgs {
  const MovieDetailRouteArgs({
    this.key,
    required this.movieId,
  });

  final _i9.Key? key;

  final int movieId;

  @override
  String toString() {
    return 'MovieDetailRouteArgs{key: $key, movieId: $movieId}';
  }
}

/// generated route for
/// [_i6.MovieListScreen]
class MovieListRoute extends _i8.PageRouteInfo<MovieListRouteArgs> {
  MovieListRoute({
    _i9.Key? key,
    required int movieId,
    required String appBarTitle,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          MovieListRoute.name,
          args: MovieListRouteArgs(
            key: key,
            movieId: movieId,
            appBarTitle: appBarTitle,
          ),
          initialChildren: children,
        );

  static const String name = 'MovieListRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MovieListRouteArgs>();
      return _i6.MovieListScreen(
        key: args.key,
        movieId: args.movieId,
        appBarTitle: args.appBarTitle,
      );
    },
  );
}

class MovieListRouteArgs {
  const MovieListRouteArgs({
    this.key,
    required this.movieId,
    required this.appBarTitle,
  });

  final _i9.Key? key;

  final int movieId;

  final String appBarTitle;

  @override
  String toString() {
    return 'MovieListRouteArgs{key: $key, movieId: $movieId, appBarTitle: $appBarTitle}';
  }
}

/// generated route for
/// [_i7.PeopleDetailScreen]
class PeopleDetailRoute extends _i8.PageRouteInfo<PeopleDetailRouteArgs> {
  PeopleDetailRoute({
    _i9.Key? key,
    required int id,
    required String name,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          PeopleDetailRoute.name,
          args: PeopleDetailRouteArgs(
            key: key,
            id: id,
            name: name,
          ),
          initialChildren: children,
        );

  static const String name = 'PeopleDetailRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PeopleDetailRouteArgs>();
      return _i7.PeopleDetailScreen(
        key: args.key,
        id: args.id,
        name: args.name,
      );
    },
  );
}

class PeopleDetailRouteArgs {
  const PeopleDetailRouteArgs({
    this.key,
    required this.id,
    required this.name,
  });

  final _i9.Key? key;

  final int id;

  final String name;

  @override
  String toString() {
    return 'PeopleDetailRouteArgs{key: $key, id: $id, name: $name}';
  }
}
