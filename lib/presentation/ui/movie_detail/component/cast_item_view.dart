import 'package:flutter/material.dart';
import 'package:my_movie_app/presentation/presentation.dart';

class CastItemView extends StatelessWidget {
  final PersonVo personVo;
  final bool isDirector;
  final bool isDense;

  const CastItemView({
    super.key,
    required this.personVo,
    this.isDirector = false,
    this.isDense = true,
  });

  @override
  Widget build(BuildContext context) {
    return KeepAliveView(
      child: GestureDetector(
        onTap: () {},
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: isDense ? 10 : 15),
          child: Row(
            children: [
              ProfileImageView(
                personVo: personVo,
                width: 52,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      personVo.name,
                      style: h3.copyWith(color: gray100),
                    ),
                    Text(
                      isDirector ? '감독' : '${personVo.characterName}역',
                      style: labelBold.copyWith(color: gray400),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
