import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_movie_app/presentation/common/keep_alive_view.dart';
import 'package:my_movie_app/presentation/model/person/person_vo.dart';
import 'package:my_movie_app/presentation/style/colors.dart';
import 'package:my_movie_app/presentation/style/fonts.dart';
import 'package:my_movie_app/presentation/ui/movie_detail/cast_item_view.dart';

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
          style: display1.copyWith(color: gray950),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: ListView.builder(
          itemCount: casts.length,
          itemBuilder: (context, index) => KeepAliveView(
            child: CastItemView(
              isDense: false,
              personVo: casts[index],
            ),
          ),
        ),
      ),
    );
  }
}
