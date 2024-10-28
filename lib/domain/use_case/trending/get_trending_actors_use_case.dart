import 'package:my_movie_app/domain/domain.dart';

class GetTrendingActorsUseCase {
  final TrendingRepository _trendingRepository;

  GetTrendingActorsUseCase({
    required TrendingRepository trendingRepository,
  }) : _trendingRepository = trendingRepository;

  Future<PagingDto<PersonDto>> call({
    required String language,
    required String timeWindow,
    required int page,
  }) async {
    return await _trendingRepository.getTrendingActors(
      language: language,
      timeWindow: timeWindow,
      page: page,
    );
  }
}
