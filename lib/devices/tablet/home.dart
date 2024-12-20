import 'package:flutter/material.dart';
import 'package:mansa/core/utils/constans.dart';
import '../../views/home/CustomHomeForAllDevices.dart';
import '../../views/widgets/custom_app_bar.dart';
import '../mobile/profile.dart';

class TabletHomeView extends StatelessWidget {
  const TabletHomeView({super.key, required this.type});
  final String type;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: scaffoldBackGroundColor,
        extendBodyBehindAppBar: false,
        appBar: MyAppBar(
            text: "home",
            W: Builder(builder: (context) {
              return IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(Icons.menu));
            })),
        drawer:  Drawer(
          child: MobileMyProfile(
            type: type,
          ),
        ),
        body: CustomHomeForAllDevices(type: type,)

    );
  }
}
