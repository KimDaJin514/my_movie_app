part of 'home_screen.dart';

class _TrendingActorsView extends StatefulWidget {
  final PagingVo<PersonVo> homeActorList;
  final Function() onLoadMore;

  const _TrendingActorsView({
    required this.homeActorList,
    required this.onLoadMore,
  });

  @override
  State<_TrendingActorsView> createState() => _TrendingActorsViewState();
}

class _TrendingActorsViewState extends State<_TrendingActorsView> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.isScrollEnd(offset: 300) &&
          !widget.homeActorList.isLoading) {
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
    const double profileWidth = 95;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '인기 배우 몰아보기',
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
                    children: widget.homeActorList.results
                        .cast<PersonVo>()
                        .map(
                          (personVo) => _actorItemView(
                            profileWidth: profileWidth,
                            personVo: personVo,
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

  Widget _actorItemView({
    required double profileWidth,
    required PersonVo personVo,
  }) {
    return GestureDetector(
      onTap: () {
        context.pushRoute(
          PeopleDetailRoute(
            id: personVo.id,
            name: personVo.name,
          ),
        );
      },
      child: KeepAliveView(
        child: SizedBox(
          width: profileWidth,
          child: Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Column(
              children: [
                ProfileImageView(
                  personVo: personVo,
                  width: profileWidth,
                ),
                Text(
                  personVo.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: labelBold.copyWith(color: gray350),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
