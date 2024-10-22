part of 'home_screen.dart';

class _MainBannerView extends StatefulWidget {
  final List<MovieVo> movies;

  const _MainBannerView({required this.movies});

  @override
  State<_MainBannerView> createState() => _MainBannerViewState();
}

class _MainBannerViewState extends State<_MainBannerView> {
  late PageController? pageController;
  int currentPage = 0;
  late Timer timer;
  late Function(Timer) timerCallBack;

  @override
  void initState() {
    super.initState();

    pageController = PageController(
      initialPage: widget.movies.length * 100,
    );
    timerCallBack = (t) {
      pageController?.nextPage(
        duration: const Duration(seconds: 1),
        curve: Curves.linear,
      );
    };
    timer = Timer.periodic(
      const Duration(seconds: 5),
      timerCallBack,
    );
    if (widget.movies.length == 1) timer.cancel();
  }

  @override
  void dispose() {
    pageController?.dispose();
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final posterHeight = (3 / 2) * MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          color: gray950,
          height: posterHeight,
          child: PageView.builder(
            controller: pageController,
            allowImplicitScrolling: true,
            itemCount: widget.movies.length * 100,
            itemBuilder: (context, index) {
              return KeepAliveView(
                child: GestureDetector(
                  onTap: () {
                    context.pushRoute(
                      MovieDetailRoute(
                        movieId: widget.movies[index % widget.movies.length].id,
                      ),
                    );
                  },
                  child: PosterView(
                    imagePath:
                        widget.movies[index % widget.movies.length].posterPath,
                    widthConfig: SizeConfig.instance.poster500,
                    hasDim: true,
                  ),
                ),
              );
            },
            onPageChanged: (index) {
              timer.cancel();
              timer = Timer.periodic(
                const Duration(seconds: 5),
                timerCallBack,
              );
              setState(() {
                currentPage = index % widget.movies.length;
              });
            },
          ),
        ),
        Positioned(
          bottom: 20,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _buildPageIndicator(),
          ),
        ),
      ],
    );
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < 10; i++) {
      indicators.add(
        Container(
          width: 6,
          height: 6,
          margin: const EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: (i == currentPage || i == currentPage - 10)
                ? mainColor
                : gray400,
          ),
        ),
      );
    }
    return indicators;
  }
}
