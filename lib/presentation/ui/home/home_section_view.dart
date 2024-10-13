part of 'home_screen.dart';

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
          style: display4.copyWith(color: gray800),
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
                      (item) => Container(
                        color: gray50,
                        margin: const EdgeInsets.only(right: 8),
                        // todo : 세로형-185, 가로형 342
                        width: 185,
                        child: Text(item.toString()),
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
