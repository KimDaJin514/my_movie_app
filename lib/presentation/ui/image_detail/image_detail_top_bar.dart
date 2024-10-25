part of 'image_detail_screen.dart';

class _ImageDetailTopBar extends StatefulWidget {
  const _ImageDetailTopBar();

  @override
  State<_ImageDetailTopBar> createState() => _ImageDetailTopBarState();
}

class _ImageDetailTopBarState extends State<_ImageDetailTopBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _topViewAnimationController;
  late Animation<Offset> _offset;

  @override
  void initState() {
    super.initState();

    _topViewAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _offset = Tween<Offset>(
      begin: const Offset(0.0, 0),
      end: const Offset(0.0, -1),
    ).animate(_topViewAnimationController);
  }

  @override
  void dispose() {
    _topViewAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final statusBarHeight = MediaQuery
        .of(context)
        .viewPadding
        .top;
    return BlocConsumer<ImageDetailBloc, ImageDetailState>(
      listener: (context, state) {
        if (state.isShowInfoView) {
          _topViewAnimationController.reverse();
        } else {
          _topViewAnimationController.forward();
        }
      },
      builder: (context, state) {
        return SlideTransition(
          position: _offset,
          child: Container(
            color: gray950.withOpacity(0.8),
            height: statusBarHeight + 50,
            child: Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  context.maybePop();
                },
                child: const Padding(
                  padding: EdgeInsets.only(right: 22, bottom: 18),
                  child: Icon(Icons.close, color: white, size: 25),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
