import 'package:my_movie_app/data/data.dart';
import 'package:my_movie_app/domain/domain.dart';
import 'package:my_movie_app/remote/remote.dart';

class TrendingDataSourceImpl extends TrendingDataSource {
  final TrendingService _trendingService;

  TrendingDataSourceImpl({
    required TrendingService trendingService,
  }) : _trendingService = trendingService;

  @override
  Future<PagingDto<MovieDto>> getTrendingMovies({
    required String language,
    required String timeWindow,
    required int page,
  }) async {
    final response = await _trendingService.getTrendingMovies(
      language: language,
      timeWindow: timeWindow,
      page: page,
    );
    return response.mapper();
  }
}
