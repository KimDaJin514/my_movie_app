import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_movie_app/config/config.dart';
import 'package:my_movie_app/domain/domain.dart';
import 'package:my_movie_app/get_it.dart';
import 'package:my_movie_app/presentation/presentation.dart';
import 'package:my_movie_app/presentation/router/app_router.gr.dart';
import 'package:my_movie_app/presentation/ui/home/bloc/home_bloc.dart';

part 'main_banner_view.dart';
part 'home_section_view.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(
        locator<GetPopularMoviesUseCase>(),
        locator<GetNowPlayingMoviesUseCase>(),
        locator<GetTopRatedMoviesUseCase>(),
        locator<GetUpcomingMoviesUseCase>(),
      )
        ..add(const HomeEvent.getPopularMovies())
        ..add(const HomeEvent.getNowPlayingMovies(isRefresh: true))
        ..add(const HomeEvent.getTopRatedMovies(isRefresh: true))
        ..add(const HomeEvent.getUpcomingMovies(isRefresh: true)),
      child: const _HomeBodyView(),
    );
  }
}

class _HomeBodyView extends StatefulWidget {
  const _HomeBodyView();

  @override
  State<_HomeBodyView> createState() => _HomeBodyViewState();
}

class _HomeBodyViewState extends State<_HomeBodyView> {
  final _scrollController = ScrollController();
  bool _isVisibleFloatingButton = false;

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(() {
      if (_scrollController.offset == 0 && _isVisibleFloatingButton) {
        setState(() {
          _isVisibleFloatingButton = false;
        });
      } else if (_scrollController.offset > 0 && !_isVisibleFloatingButton) {
        setState(() {
          _isVisibleFloatingButton = true;
        });
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gray950,
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            _MainBannerView(
              movies: context.select(
                (HomeBloc bloc) => bloc.state.popularMovies,
              ),
            ),
            _HomeSectionView(
              sectionTitle: '현재 상영중인 영화',
              homeSectionList: context.select(
                (HomeBloc bloc) => bloc.state.nowPlayingMoviePaging,
              ),
              onLoadMore: () {
                context.read<HomeBloc>().add(
                      const HomeEvent.getNowPlayingMovies(isRefresh: false),
                    );
              },
            ),
            _HomeSectionView(
              sectionTitle: '평점 좋은 영화',
              posterType: PosterType.horizontal,
              homeSectionList: context.select(
                (HomeBloc bloc) => bloc.state.topRatedMoviePaging,
              ),
              onLoadMore: () {
                context.read<HomeBloc>().add(
                      const HomeEvent.getTopRatedMovies(isRefresh: false),
                    );
              },
            ),
            _HomeSectionView(
              sectionTitle: '개봉 예정 영화',
              homeSectionList: context.select(
                (HomeBloc bloc) => bloc.state.upcomingMoviePaging,
              ),
              onLoadMore: () {
                context.read<HomeBloc>().add(
                      const HomeEvent.getUpcomingMovies(isRefresh: false),
                    );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Visibility(
        visible: _isVisibleFloatingButton,
        child: scrollUpFloatingButton(
          onPressed: () {
            _scrollController.animateTo(
              0,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            );
          },
        ),
      ),
      floatingActionButtonLocation: null,
    );
  }
}
