part of 'movie_detail_screen.dart';

Widget _movieBasicInfoView({required MovieVo movie}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              movie.title,
              style: display3.copyWith(color: white),
            ),
          ),
          const SizedBox(width: 10),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Row(
              children: [
                const Icon(Icons.star, color: yellow500, size: 22),
                const SizedBox(width: 3),
                Text(
                  movie.voteAverage.toStringAsFixed(1),
                  style: subtitle2.copyWith(color: white),
                ),
              ],
            ),
          ),
        ],
      ),
      const SizedBox(height: 10),
      Row(
        children: [
          Expanded(
            child: Text(
              '${movie.releaseDate.getYearFromString()} '
              '· ${_countryText(countries: movie.originCountry)} '
              '· ${_genreText(genres: movie.genres)}',
              style: h1.copyWith(color: gray400),
            ),
          ),
        ],
      ),
      const SizedBox(height: 50),
      Visibility(
        visible: movie.tagline != '',
        child: Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: Text(
            '"${movie.tagline}"',
            style: display1.copyWith(
              color: white,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ),
      _overviewTextView(overview: movie.overview),
      _detailInfoView(movie: movie),
    ],
  );
}

Widget _detailInfoView({required MovieVo movie}) {
  return Row(
    children: [
      Expanded(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: IntrinsicHeight(
            child: Row(
              children: [
                _detailInfoCell(
                  title: '상영 시간',
                  content: movie.runtime.toHoursAndMinutes(),
                ),
                _detailInfoCell(
                  title: '개봉',
                  content: movie.releaseDate,
                ),
                _detailInfoCell(
                  title: '장르',
                  content: _genreText(genres: movie.genres),
                ),
                _detailInfoCell(
                  title: '제작 국가',
                  content: _countryText(countries: movie.originCountry),
                ),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}

Widget _detailInfoCell({
  required String title,
  required String content,
}) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
    decoration: BoxDecoration(
      color: gray900.withOpacity(0.9),
      border: const Border(left: BorderSide(color: gray950)),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: bodyS.copyWith(color: white),
        ),
        const SizedBox(height: 9),
        Text(
          content,
          style: subtitle3.copyWith(color: white),
        ),
      ],
    ),
  );
}

Widget _overviewTextView({required String overview}) {
  return Visibility(
    visible: overview != '',
    child: Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: ExpandableTextView(
        text: overview,
        textStyle: bodyM.copyWith(color: white),
        moreTextStyle: h2.copyWith(color: gray400),
        backColor: gray950,
        maxLines: 3,
      ),
    ),
  );
}

String _countryText({
  required List<String> countries,
}) {
  return countries.join('/');
}

String _genreText({
  required List<GenreVo> genres,
}) {
  return genres.map((genreVo) => genreVo.name).join('/');
}
