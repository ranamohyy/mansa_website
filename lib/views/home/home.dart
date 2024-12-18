import 'package:flutter/material.dart';

import '../../core/res/responsive.dart';
import '../../devices/chrome/home.dart';
import '../../devices/mobile/home/view.dart';
import '../../devices/tablet/home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.type});
  final String type;
  @override
  Widget build(BuildContext context) {
    print("========================${type}");
    print(MediaQuery.of(context).size.width);

    return Scaffold(
      body: Responsive(
        mob: (context) => HomeMobileView(
          type: type,
        ),
        tab: (context) => TabletHomeView(
          type: type,
        ),
        web: (context) => WebHomeView(
          type: type,
        ),
      ),
    );
  }
}
