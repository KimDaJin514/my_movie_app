part of 'home_screen.dart';

class _HomeSectionView extends StatefulWidget {
  final String sectionTitle;
  final PagingVo<MovieVo> homeSectionList;

  const _HomeSectionView({
    required this.sectionTitle,
    required this.homeSectionList,
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
        context.read<HomeBloc>().add(
              const HomeEvent.getNowPlayingMovies(isRefresh: false),
            );
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
            style: display4.copyWith(color: white),
          ),
          const SizedBox(height: 14),
          Row(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  controller: _scrollController,
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...widget.homeSectionList.results.map(
                        (item) => Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: GestureDetector(
                            onTap: () {
                              // todo: 상세 페이지 이동
                            },
                            child: PosterView(
                              imagePath: '${item.posterPath}',
                              width: SizeConfig.instance.poster185,
                              height: (3 / 2) * 185,
                            ),
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
          style: display4.copyWith(color: white),
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
