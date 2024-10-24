import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_movie_app/presentation/presentation.dart';
import 'package:my_movie_app/presentation/router/app_router.gr.dart';
import 'package:my_movie_app/presentation/ui/main/bloc/main_bloc.dart';

part 'main_bottom_navigation_view.dart';

@RoutePage()
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        HomeRoute(),
      ],
      builder: (context, child) => _MainView(child: child),
    );
  }
}

class _MainView extends StatefulWidget {
  final Widget child;

  const _MainView({required this.child});

  @override
  State<_MainView> createState() => _MainViewState();
}

class _MainViewState extends State<_MainView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gray950,
      body: widget.child,
      bottomNavigationBar: _MainBottomNavigationView(
        tabsRouter: AutoTabsRouter.of(context),
      ),
    );
  }
}
