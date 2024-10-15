part of 'home_screen.dart';

Widget _mainBannerView({required List<MovieVo> movies}) {
  // todo : 인기영화
  return Container(
    width: double.infinity,
    height: 500,
    color: gray200,
    child: Center(child: Text('${movies.length}')),
  );
}
