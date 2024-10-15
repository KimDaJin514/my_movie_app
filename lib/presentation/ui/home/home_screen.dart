import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_movie_app/domain/use_case/get_popular_movies_use_case.dart';
import 'package:my_movie_app/get_it.dart';
import 'package:my_movie_app/presentation/common/scroll_up_floating_button.dart';
import 'package:my_movie_app/presentation/model/movie_vo.dart';
import 'package:my_movie_app/presentation/style/colors.dart';
import 'package:my_movie_app/presentation/style/fonts.dart';
import 'package:my_movie_app/presentation/ui/home/bloc/home_bloc.dart';

part 'main_banner_view.dart';

part 'home_section_view.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _scrollController = ScrollController();
  bool isVisibleFloatingButton = false;

  @override
  void initState() {
    _scrollController.addListener(() {
      if (_scrollController.offset == 0 && isVisibleFloatingButton) {
        setState(() {
          isVisibleFloatingButton = false;
        });
      } else if (_scrollController.offset > 0 && !isVisibleFloatingButton) {
        setState(() {
          isVisibleFloatingButton = true;
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
    return BlocProvider(
      create: (context) =>
      HomeBloc(
        locator<GetPopularMoviesUseCase>(),
      )
        ..add(const HomeEvent.getPopularMovies(isRefresh: true)),
      child: Scaffold(
        backgroundColor: white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Builder(
                builder: (context) {
                  return _mainBannerView(
                    movies: context.select(
                          (HomeBloc bloc) =>
                      bloc.state.moviePaging.results as List<MovieVo>,
                    ),
                  );
                }
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
          visible: isVisibleFloatingButton,
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
      ),
    );
  }
}
