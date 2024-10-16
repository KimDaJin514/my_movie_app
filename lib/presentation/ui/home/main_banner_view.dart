part of 'home_screen.dart';

class _MainBannerView extends StatefulWidget {
  final List<MovieVo> movies;

  const _MainBannerView({required this.movies});

  @override
  State<_MainBannerView> createState() => _MainBannerViewState();
}

class _MainBannerViewState extends State<_MainBannerView> {
  late PageController? _pageController;
  int _currentPage = 0;
  late Timer _timer;
  late Function(Timer) _timerCallBack;

  @override
  void initState() {
    super.initState();

    _pageController = PageController(
      initialPage: widget.movies.length * 100,
    );
    _timerCallBack = (t) {
      _pageController?.nextPage(
        duration: const Duration(seconds: 1),
        curve: Curves.linear,
      );
    };
    _timer = Timer.periodic(
      const Duration(seconds: 5),
      _timerCallBack,
    );
    if (widget.movies.length == 1) _timer.cancel();
  }

  @override
  void dispose() {
    _pageController?.dispose();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: gray950,
          height: (3 / 2) * MediaQuery.of(context).size.width,
          child: PageView.builder(
            controller: _pageController,
            allowImplicitScrolling: true,
            itemCount: widget.movies.length * 100,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  // todo: 상세 페이지 이동
                },
                child: PosterView(
                  imagePath:
                      '${widget.movies[index % widget.movies.length].posterPath}',
                  width: SizeConfig.instance.poster500,
                  height: (3 / 2) * MediaQuery.of(context).size.width,
                  hasDim: true,
                ),
              );
            },
            onPageChanged: (index) {
              _timer.cancel();
              _timer = Timer.periodic(
                const Duration(seconds: 5),
                _timerCallBack,
              );
              setState(() {
                _currentPage = index % widget.movies.length;
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
            color: (i == _currentPage || i == _currentPage - 10)
                ? mainColor
                : gray400,
          ),
        ),
      );
    }
    return indicators;
  }
}
