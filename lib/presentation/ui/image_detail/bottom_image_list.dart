part of 'image_detail_screen.dart';

class _BottomImageList extends StatefulWidget {
  final List<PosterVo> gallery;
  final void Function(int index) onImageClick;

  const _BottomImageList({
    required this.gallery,
    required this.onImageClick,
  });

  @override
  State<_BottomImageList> createState() => _BottomImageListState();
}

class _BottomImageListState extends State<_BottomImageList>
    with SingleTickerProviderStateMixin {
  late AnimationController _bottomViewAnimationController;
  late Animation<Offset> _offset;
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    _bottomViewAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _offset = Tween<Offset>(
      begin: const Offset(0.0, 0),
      end: const Offset(0.0, 1),
    ).animate(_bottomViewAnimationController);
  }

  @override
  void dispose() {
    _bottomViewAnimationController.dispose();
    _scrollController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ImageDetailBloc, ImageDetailState>(
      listener: (context, state) {
        if (state.isShowInfoView) {
          _bottomViewAnimationController.reverse();
        } else {
          _bottomViewAnimationController.forward();
        }
        if (_scrollController.hasClients) {
          double offset = state.selectedIndex * 80;
          if (_scrollController.position.maxScrollExtent <
              state.selectedIndex * 80) {
            offset = _scrollController.position.maxScrollExtent;
          }
          _scrollController.animateTo(
            offset,
            duration: const Duration(milliseconds: 100),
            curve: Curves.linear,
          );
        }
      },
      builder: (context, state) {
        return SlideTransition(
          position: _offset,
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: gray800,
                  borderRadius: BorderRadius.all(Radius.circular(14)),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                child: Text(
                  '${state.selectedIndex + 1} / ${widget.gallery.length}',
                  style: labelBold.copyWith(color: white),
                ),
              ),
              const SizedBox(height: 10),
              _ImageItemView(
                gallery: widget.gallery,
                selectedIndex: state.selectedIndex,
                onImageClick: widget.onImageClick,
              ),
            ],
          ),
        );
      },
    );
  }
}

class _ImageItemView extends StatelessWidget {
  final List<PosterVo> gallery;
  final int selectedIndex;
  final Function(int index) onImageClick;

  const _ImageItemView({
    required this.gallery,
    required this.selectedIndex,
    required this.onImageClick,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: gray950.withOpacity(0.8),
      height: 120,
      child: ListView.separated(
        itemCount: gallery.length,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (selectedIndex != index) {
                context.read<ImageDetailBloc>().add(
                      ImageDetailEvent.changeSelectedImageIndex(index),
                    );
                onImageClick(index);
              }
            },
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: PosterView(
                    imagePath: gallery[index].filePath,
                    widthConfig: gallery[index].aspectRatio > 1
                        ? SizeConfig.instance.backDrop300
                        : SizeConfig.instance.poster92,
                    height: 72,
                    width: 72,
                  ),
                ),
                Visibility(
                  visible: index == selectedIndex,
                  child: Container(
                    width: 72,
                    height: 72,
                    decoration: BoxDecoration(
                      border: Border.all(color: gray100, width: 2),
                      borderRadius: const BorderRadius.all(Radius.circular(4)),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (_, __) => const SizedBox(width: 10),
      ),
    );
  }
}
