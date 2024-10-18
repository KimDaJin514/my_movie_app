import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_movie_app/config.dart';
import 'package:my_movie_app/domain/use_case/get_popular_movies_use_case.dart';
import 'package:my_movie_app/get_it.dart';
import 'package:my_movie_app/presentation/common/poster_view.dart';
import 'package:my_movie_app/presentation/common/scroll_up_floating_button.dart';
import 'package:my_movie_app/presentation/model/movie_vo.dart';
import 'package:my_movie_app/presentation/style/colors.dart';
import 'package:my_movie_app/presentation/style/fonts.dart';
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
      )..add(const HomeEvent.getPopularMovies(isRefresh: true)),
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
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List sampleList = [1, 2, 3, 4, 5, 1, 2, 3, 4, 5];
    return Scaffold(
      backgroundColor: gray950,
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            _MainBannerView(
              movies: context.select(
                (HomeBloc bloc) =>
                    bloc.state.moviePaging.results as List<MovieVo>,
              ),
            ),
            _homeSectionView(
              sectionTitle: '현재 상영중인 영화',
              homeSectionList: sampleList,
            ),
            _homeSectionView(
              sectionTitle: '평점 좋은 영화',
              homeSectionList: sampleList,
            ),
            _homeSectionView(
              sectionTitle: '개봉 예정 영화',
              homeSectionList: sampleList,
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