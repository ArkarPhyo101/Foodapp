import 'package:flutter/material.dart';

import '../../colors/color.dart';
import '../../models/MenuItems/items.dart';
import '../../widgets/AppBars/Menu/menu_appbar.dart';
import '../../widgets/Menupage/menu_items.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabcontroller = TabController(length: 3, vsync: this);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 140,
        iconTheme: IconThemeData(color: menupage[2]),
        backgroundColor: menupage[3],
        title: MenuAppbar(tabcontroller: tabcontroller),
      ),
      body: TabBarView(controller: tabcontroller, children: const [
        MenuGridview(),
        MenuGridview(),
        MenuGridview(),
      ]),
    );
  }
}
