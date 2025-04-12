import 'package:flutter/cupertino.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import '../screens/main_screen.dart';
import '../screens/menu_screen.dart';

class ZoomDrawerScreen extends StatefulWidget {
  const ZoomDrawerScreen({super.key});

  @override
  State<ZoomDrawerScreen> createState() => _ZoomDrawerScreenState();
}

class _ZoomDrawerScreenState extends State<ZoomDrawerScreen> {
  final ZoomDrawerController _zoomDrawerController = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: _zoomDrawerController,
      menuScreen: MenuScreen(
        onItemPressed: () {
          _zoomDrawerController.toggle!();
        },
      ),
      mainScreen: MainScreen(
        onMenuPressed: () {
          _zoomDrawerController.toggle!();
        },
      ),
      borderRadius: 24.0,
      showShadow: true,
      angle: -12.0,
      slideWidth: MediaQuery.of(context).size.width * 0.75,
      openCurve: Curves.fastOutSlowIn,
      closeCurve: Curves.bounceIn,
    );
  }
}
