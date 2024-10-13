part of 'main_screen.dart';

class _MainBottomNavigationView extends StatelessWidget {
  final TabsRouter tabsRouter;

  const _MainBottomNavigationView({required this.tabsRouter});

  @override
  Widget build(BuildContext context) {
    final List<IconNameVo> bottomNavigationBarItems = [
      IconNameVo(icon: Icons.home, name: '홈'),
    ];
    return Wrap(
      children: [
        Column(
          children: [
            Row(
              children: bottomNavigationBarItems.mapIndexed((index, item) {
                return Expanded(
                  child: _bottomNavigationBarItemView(
                    iconAsset: item.icon,
                    text: item.name,
                    isSelected: context.select(
                      (MainBloc bloc) =>
                          bloc.state.selectedBottomNavigationIndex == index,
                    ),
                    tabIndex: index,
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ],
    );
  }

  Widget _bottomNavigationBarItemView({
    required IconData iconAsset,
    required String text,
    required bool isSelected,
    required int tabIndex,
  }) {
    return Builder(
      builder: (context) {
        final MainBloc mainBloc = context.read();
        return GestureDetector(
          onTap: () {
            mainBloc.add(
              MainEvent.selectBottomNavigationItem(selectedIndex: tabIndex),
            );
            tabsRouter.setActiveIndex(tabIndex);
          },
          child: SafeArea(
            child: Column(
              children: [
                Icon(iconAsset),
                Text(
                  text,
                  style: dockbar.copyWith(
                    color: isSelected ? gray800 : gray400,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

class IconNameVo {
  final IconData icon;
  final String name;

  IconNameVo({
    required this.icon,
    required this.name,
  });
}
