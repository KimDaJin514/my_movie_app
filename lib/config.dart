class Config {
  static final Config instance = Config._internal();
  Config._internal();

  final String baseUrl = 'https://api.themoviedb.org/3/movie/';
  final String imageUrl = 'http://image.tmdb.org/t/p/';
}

class SizeConfig {
  static final SizeConfig instance = SizeConfig._internal();
  SizeConfig._internal();

  final String backDrop300 = 'w300';
  final String backDrop780 = 'w780';
  final String backDrop1280 = 'w1280';
  final String backDropOriginal = 'original';

  final String poster92 = 'w92';
  final String poster154 = 'w154';
  final String poster185 = 'w185';
  final String poster342 = 'w342';
  final String poster500 = 'w500';
  final String poster780 = 'w780';
  final String posterOriginal = 'original';

  final String profile45 = 'w45';
  final String profile185 = 'w185';
  final String profileH632 = 'h632';
  final String profileOriginal = 'original';

  final String still92 = 'w92';
  final String still185 = 'w185';
  final String still300 = 'w300';
  final String stillOriginal = 'original';
}
