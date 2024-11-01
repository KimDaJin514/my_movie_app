import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_movie_app/presentation/presentation.dart';
import 'package:my_movie_app/presentation/ui/movie_detail/component/cast_item_view.dart';

@RoutePage()
class CastsScreen extends StatelessWidget {
  final List<PersonVo> casts;

  const CastsScreen({super.key, required this.casts});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gray950,
      appBar: AppBar(
        backgroundColor: gray300,
        title: Text(
          '출연진',
          style: h1.copyWith(color: gray950),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: ListView.builder(
          itemCount: casts.length,
          itemBuilder: (context, index) => CastItemView(
            isDense: false,
            personVo: casts[index],
          ),
        ),
      ),
    );
  }
}
