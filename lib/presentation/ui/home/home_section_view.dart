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
    return Container(
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.sectionTitle,
            style: title.copyWith(color: white),
          ),
          const SizedBox(height: 14),
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
                          (movieVo) => _getPosterItem(movieVo: movieVo),
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

  Widget _getPosterItem({required MovieVo movieVo}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: GestureDetector(
            onTap: () {
              // todo: 상세 페이지 이동
            },
            child: PosterView(
              imagePath: widget.posterType == PosterType.vertical
                  ? '${movieVo.posterPath}'
                  : '${movieVo.backdropPath}',
              width: widget.posterType == PosterType.vertical
                  ? SizeConfig.instance.posterOriginal
                  : SizeConfig.instance.backDropOriginal,
              height: widget.posterType == PosterType.vertical
                  ? (3 / 2) * 185
                  : 190,
              widthSize: widget.posterType == PosterType.vertical ? null : 350,
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
        padding: const EdgeInsets.only(top: 10, left: 5, right: 5),
        child: SizedBox(
          width: widget.posterType == PosterType.vertical ? null : 340,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  movieVo.title ?? '',
                  style: subtitle.copyWith(color: white),
                ),
              ),
              Row(
                children: [
                  const Icon(Icons.star, color: mainColor, size: 19),
                  const SizedBox(width: 2),
                  Text(
                    (movieVo.voteAverage ?? 0).toStringAsFixed(1),
                    style: subtitle.copyWith(color: white),
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

Widget _homeSectionView({
  required String sectionTitle,
  required List<dynamic> homeSectionList,
}) {
  return Container(
    padding: const EdgeInsets.all(20),
    width: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          sectionTitle,
          style: title.copyWith(color: white),
        ),
        const SizedBox(height: 14),
        Row(
          children: [
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...homeSectionList.map(
                      (item) => GestureDetector(
                        onTap: () {
                          // todo: 상세 페이지 이동
                        },
                        child: Container(
                          color: gray50,
                          margin: const EdgeInsets.only(right: 8),
                          // todo : 세로형-185, 가로형 342
                          width: 185,
                          child: Text(item.toString()),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
