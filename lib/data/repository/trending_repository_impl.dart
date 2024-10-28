import 'package:my_movie_app/data/data.dart';
import 'package:my_movie_app/domain/domain.dart';

class TrendingRepositoryImpl extends TrendingRepository {
  final TrendingDataSource _trendingDataSource;

  TrendingRepositoryImpl({
    required TrendingDataSource trendingDataSource,
  }) : _trendingDataSource = trendingDataSource;

  @override
  Future<PagingDto<MovieDto>> getTrendingMovies({
    required String language,
    required String timeWindow,
    required int page,
  }) =>
      _trendingDataSource.getTrendingMovies(
        language: language,
        timeWindow: timeWindow,
        page: page,
      );
}
