import 'package:flutter/material.dart';

import 'package:munal_deafs_app/ui/screens/artwork_types.dart';
import 'package:munal_deafs_app/ui/screens/glossary_list_screen.dart';

class NavigationDeafMunal extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _NavigationDeafMunal();
  }
}

class _NavigationDeafMunal extends State<NavigationDeafMunal> {
  int currentIndex = 0;

  List<GlobalKey<NavigatorState>> _navigatorKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>()
  ];

  final List<Widget> pages = [
    ArtworkTypes(),
    GlossaryListScreen(),
  ];

  void onTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: true,
            onTap: onTapped,
            currentIndex: currentIndex,
            selectedItemColor: Colors.blueAccent,
            unselectedItemColor: Colors.grey,
            backgroundColor: Colors.white,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Mapa"),
              BottomNavigationBarItem(icon: Icon(Icons.book), label: "Glosario")
            ],
          ),
          body: Stack(
            children: [_buildOffstageNavigator(0), _buildOffstageNavigator(1)],
          ),
        ),
        onWillPop: () async {
          final isFirstRouteInCurrentTab =
              !await _navigatorKeys[currentIndex].currentState!.maybePop();

          print('isFirstRouteInCurrentTab: ' +
              isFirstRouteInCurrentTab.toString());

          // let system handle back button if we're on the first route
          return isFirstRouteInCurrentTab;
        });
  }

  Map<String, WidgetBuilder> _routeBuilders(BuildContext context, int index) {
    return {
      '/': (context) {
        return [ArtworkTypes(), GlossaryListScreen()].elementAt(index);
      },
    };
  }

  Widget _buildOffstageNavigator(int index) {
    var routeBuilders = _routeBuilders(context, index);

    return Offstage(
      offstage: currentIndex != index,
      child: Navigator(
        key: _navigatorKeys[index],
        onGenerateRoute: (routeSettings) {
          return MaterialPageRoute(
            builder: (context) => routeBuilders[routeSettings.name!]!(context),
          );
        },
      ),
    );
  }
}
