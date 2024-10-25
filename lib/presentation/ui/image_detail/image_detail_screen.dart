import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_movie_app/config/config.dart';
import 'package:my_movie_app/presentation/presentation.dart';
import 'package:my_movie_app/presentation/ui/image_detail/bloc/image_detail_bloc.dart';

part 'image_detail_top_bar.dart';
part 'bottom_image_list.dart';

@RoutePage()
class ImageDetailScreen extends StatelessWidget {
  final List<PosterVo> gallery;
  final int selectedIndex;

  const ImageDetailScreen({
    super.key,
    required this.gallery,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );

    return BlocProvider(
      create: (context) => ImageDetailBloc()
        ..add(
          ImageDetailEvent.changeSelectedImageIndex(selectedIndex),
        ),
      child: Scaffold(
        backgroundColor: gray950,
        body: ImageDetailBodyView(
          gallery: gallery,
          selectedIndex: selectedIndex,
        ),
      ),
    );
  }
}

class ImageDetailBodyView extends StatefulWidget {
  final List<PosterVo> gallery;
  final int selectedIndex;

  const ImageDetailBodyView({
    super.key,
    required this.gallery,
    required this.selectedIndex,
  });

  @override
  State<ImageDetailBodyView> createState() => _ImageDetailBodyViewState();
}

class _ImageDetailBodyViewState extends State<ImageDetailBodyView> {
  late PageController _pageController;
  late int _selectedPage;
  bool _scrollEnabled = true;
  bool _isShowInfoView = true;

  final _transformationController = TransformationController();
  late TapDownDetails _doubleTapDetails;

  @override
  void initState() {
    super.initState();

    _pageController = PageController(initialPage: widget.selectedIndex);
    setState(() {
      _selectedPage = widget.selectedIndex;
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _transformationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        PageView.builder(
          controller: _pageController,
          physics: _scrollEnabled
              ? const PageScrollPhysics()
              : const NeverScrollableScrollPhysics(),
          allowImplicitScrolling: true,
          itemCount: widget.gallery.length,
          itemBuilder: (context, index) {
            return InteractiveViewer(
              transformationController: _transformationController,
              maxScale: 3,
              onInteractionEnd: (details) {
                final scale =
                    _transformationController.value.getMaxScaleOnAxis();
                setState(() {
                  _scrollEnabled = scale <= 1;
                });
              },
              child: GestureDetector(
                onDoubleTapDown: (d) => _doubleTapDetails = d,
                onDoubleTap: _changeImageSize,
                onTap: () {
                  setState(() {
                    _isShowInfoView = !_isShowInfoView;
                    context.read<ImageDetailBloc>().add(
                          ImageDetailEvent.onImageClick(_isShowInfoView),
                        );
                  });
                },
                child: Center(
                  child: PosterView(
                    imagePath: widget.gallery[index].filePath,
                    widthConfig: widget.gallery[index].aspectRatio > 1
                        ? SizeConfig.instance.original
                        : SizeConfig.instance.poster780,
                    height: deviceWidth / widget.gallery[index].aspectRatio,
                    width: deviceWidth,
                  ),
                ),
              ),
            );
          },
          onPageChanged: (index) {
            setState(() {
              _selectedPage = index;
            });
            context.read<ImageDetailBloc>().add(
                  ImageDetailEvent.changeSelectedImageIndex(index),
                );
          },
        ),
        const _ImageDetailTopBar(),
        Visibility(
          visible: widget.gallery.length > 1,
          child: Align(
            alignment: Alignment.bottomRight,
            child: Wrap(
              children: [
                _BottomImageList(
                  gallery: widget.gallery,
                  onImageClick: (index) {
                    _pageController.jumpToPage(index);
                    _transformationController.value = Matrix4.identity();
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void _changeImageSize() {
    setState(() {
      _scrollEnabled = _transformationController.value != Matrix4.identity();
    });
    if (_transformationController.value != Matrix4.identity()) {
      _transformationController.value = Matrix4.identity();
    } else {
      final position = _doubleTapDetails.localPosition;
      _transformationController.value = Matrix4.identity()
        ..translate(-position.dx * 2, -position.dy * 2)
        ..scale(3.0);
    }
  }
}
