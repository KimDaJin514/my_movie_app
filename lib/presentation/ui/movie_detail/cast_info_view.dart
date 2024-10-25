part of 'movie_detail_screen.dart';

class _CastInfoView extends StatelessWidget {
  final PersonVo director;
  final List<PersonVo> casts;

  const _CastInfoView({
    required this.casts,
    required this.director,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '출연 / 제작 정보',
          style: display.copyWith(color: white),
        ),
        const SizedBox(height: 12),
        CastItemView(
          isDirector: true,
          personVo: director,
        ),
        Column(
          children: casts
              .map(
                (personVo) => CastItemView(
                  personVo: personVo,
                ),
              )
              .take(2)
              .toList(),
        ),
        _moreButtonView(),
      ],
    );
  }

  Widget _moreButtonView() {
    return Builder(builder: (context) {
      return Visibility(
        visible: casts.length > 2,
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: GestureDetector(
            onTap: () {
              context.pushRoute(CastsRoute(casts: casts));
            },
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 10),
              color: gray900.withOpacity(0.9),
              child: Center(
                child: Text(
                  '더보기',
                  style: subtitle3.copyWith(color: white),
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
