part of 'home_screen.dart';

class _HomeSectionView extends StatefulWidget {
  final String sectionTitle;
  final PagingVo<MovieVo> homeSectionList;
  final PosterType posterType;
  final Function() onLoadMore;

  const _HomeSectionView({
    required this.sectionTitle,
    required this.homeSectionList,
    this.posterType = PosterType.vertical,
    required this.onLoadMore,
  });

  @override
  State<_HomeSectionView> createState() => _HomeSectionViewState();
}

class _HomeSectionViewState extends State<_HomeSectionView> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.isScrollEnd(offset: 300) &&
          !widget.homeSectionList.isLoading) {
        widget.onLoadMore();
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
    final verticalTypeWidth = MediaQuery.of(context).size.width / 2;
    final horizontalTypeWidth = MediaQuery.of(context).size.width / 1.3;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.sectionTitle,
            style: display1.copyWith(color: white),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  controller: _scrollController,
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: widget.homeSectionList.results
                        .cast<MovieVo>()
                        .map(
                          (movieVo) => KeepAliveView(
                            child: _posterItemView(
                              movieVo: movieVo,
                              verticalTypeWidth: verticalTypeWidth,
                              horizontalTypeWidth: horizontalTypeWidth,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _posterItemView({
    required MovieVo movieVo,
    required double verticalTypeWidth,
    required double horizontalTypeWidth,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: GestureDetector(
            onTap: () {
              context.pushRoute(MovieDetailRoute(movieId: movieVo.id));
            },
            child: PosterView(
              imagePath: widget.posterType == PosterType.vertical
                  ? movieVo.posterPath
                  : movieVo.backdropPath,
              widthConfig: SizeConfig.instance.original,
              height: widget.posterType == PosterType.vertical
                  ? verticalTypeWidth * 1.4
                  : horizontalTypeWidth / 1.7,
              width: widget.posterType == PosterType.vertical
                  ? verticalTypeWidth
                  : horizontalTypeWidth,
            ),
          ),
        ),
        _movieInfoView(movieVo: movieVo),
      ],
    );
  }

  Widget _movieInfoView({required MovieVo movieVo}) {
    return Visibility(
      visible: widget.posterType == PosterType.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(top: 8, left: 7, right: 7),
        child: SizedBox(
          width: 286,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  movieVo.title,
                  style: subtitle1.copyWith(color: white),
                ),
              ),
              Row(
                children: [
                  const Icon(Icons.star, color: yellow500, size: 19),
                  const SizedBox(width: 2),
                  Text(
                    movieVo.voteAverage.toStringAsFixed(1),
                    style: subtitle1.copyWith(color: white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
