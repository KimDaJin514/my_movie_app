part of 'movie_detail_screen.dart';

class CastInfoView extends StatelessWidget {
  final CreditsVo creditsVo;

  const CastInfoView({super.key, required this.creditsVo});

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
          personVo: creditsVo.crew.firstWhere(
            (personVo) => personVo.job == 'Director',
          ),
        ),
        Column(
          children: creditsVo.cast
              .map(
                (personVo) => CastItemView(
                  personVo: personVo,
                ),
              )
              .take(2)
              .toList(),
        ),
        const SizedBox(height: 10),
        Container(
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
      ],
    );
  }
}
