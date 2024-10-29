import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_movie_app/config/assets_config.dart';
import 'package:my_movie_app/config/config.dart';
import 'package:my_movie_app/domain/domain.dart';
import 'package:my_movie_app/get_it.dart';
import 'package:my_movie_app/presentation/presentation.dart';
import 'package:my_movie_app/presentation/ui/people_detail/bloc/people_detail_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class PeopleDetailScreen extends StatelessWidget {
  final int id;
  final String name;

  const PeopleDetailScreen({
    super.key,
    required this.id,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gray950,
      appBar: AppBar(
        backgroundColor: gray300,
        title: Text(
          name,
          style: h1.copyWith(color: gray950),
        ),
      ),
      body: BlocProvider(
        create: (context) => PeopleDetailBloc(
          locator<GetPeopleDetailUseCase>(),
          locator<GetSnsAccountUseCase>(),
          locator<GetPersonImageUseCase>(),
        )
          ..add(PeopleDetailEvent.getPersonDetail(id: id))
          ..add(PeopleDetailEvent.getSnsAccount(id: id))
          ..add(PeopleDetailEvent.getPersonImages(id: id)),
        child: const _PeopleDetailBodyView(),
      ),
    );
  }
}

class _PeopleDetailBodyView extends StatelessWidget {
  const _PeopleDetailBodyView();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _profileView(
            personVo: context.select(
              (PeopleDetailBloc bloc) => bloc.state.personVo,
            ),
            externalIdVo: context.select(
              (PeopleDetailBloc bloc) => bloc.state.externalIdVo,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              children: [
                GalleryView(
                  isMovie: false,
                  gallery: context.select(
                    (PeopleDetailBloc bloc) => bloc.state.images,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _profileView({
    required PersonVo personVo,
    required ExternalIdVo externalIdVo,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: gray500, width: 4),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            children: [
              ProfileImageView(personVo: personVo, width: 100),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      personVo.name,
                      style: display.copyWith(fontSize: 17, color: gray300),
                    ),
                    const SizedBox(height: 3),
                    _subContentText(text: '배우'),
                    _subContentText(text: personVo.birthday),
                    _subContentText(text: personVo.placeOfBirth),
                  ],
                ),
              )
            ],
          ),
          _snsAccountView(externalIdVo: externalIdVo),
        ],
      ),
    );
  }

  Widget _subContentText({required String text}) {
    return Visibility(
      visible: text.isNotEmpty,
      child: Padding(
        padding: const EdgeInsets.only(left: 2),
        child: Text(
          text,
          style: subtitle4.copyWith(color: gray400),
        ),
      ),
    );
  }

  Widget _snsAccountView({
    required ExternalIdVo externalIdVo,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: _snsItemView(
                  launchUrl: Config.instance.instagramUrl,
                  iconName: instagramIcon,
                  account: externalIdVo.instagramId,
                ),
              ),
              Expanded(
                child: _snsItemView(
                  launchUrl: Config.instance.faceBookUrl,
                  iconName: faceBookImg,
                  account: ' ${externalIdVo.facebookId}',
                  assetWidth: 18,
                ),
              ),
            ],
          ),
          _snsItemView(
            launchUrl: Config.instance.twitterUrl,
            iconName: twitterImg,
            account: externalIdVo.twitterId,
          ),
        ],
      ),
    );
  }

  Widget _snsItemView({
    required String iconName,
    required String account,
    required String launchUrl,
    double assetWidth = 20,
  }) {
    return Builder(
      builder: (context) {
        return Visibility(
          visible: account.trim() != '',
          child: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                iconName.contains('svg')
                    ? SvgPicture.asset(iconName, width: assetWidth)
                    : Image.asset(
                        iconName,
                        width: assetWidth,
                        cacheWidth: assetWidth.cacheSize(context),
                      ),
                const SizedBox(width: 3),
                GestureDetector(
                  onTap: () {
                    _launchUrl(url: '$launchUrl$account');
                  },
                  child: Text(
                    account,
                    style: h3.copyWith(color: gray500, fontSize: 13),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future _launchUrl({
    required String url,
  }) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $url');
    }
  }
}
