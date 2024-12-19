import 'package:flutter/material.dart';
import 'package:mansa/core/routes/route.dart';
import 'package:mansa/devices/mobile/home/course_view.dart';
import 'package:mansa/views/auth/login/view.dart';
import '../../core/utils/constans.dart';
import '../../core/utils/utils.dart';
import '../../models/profile_model.dart';
import '../../views/myProfile/body_my_courses.dart';
import '../../views/home/CustomHomeForAllDevices.dart';
import '../../views/widgets/custom_item_profile_widget.dart';
import '../../views/widgets/visitor_view_widget.dart';
import '../mobile/myProfile/views/aboutApp.dart';
import '../mobile/myProfile/views/charge.dart';
import '../mobile/myProfile/views/myAcc.dart';
import '../mobile/myProfile/views/results.dart';
import '../mobile/myProfile/views/suggestions.dart';

class WebHomeView extends StatefulWidget {
 const WebHomeView({super.key, required this.type});
  final String type;
  @override
  State<WebHomeView> createState() => _WebHomeViewState();
}
class _WebHomeViewState extends State<WebHomeView> {
  int index = 0;
  late List<Widget> views = [
    CustomHomeForAllDevices(
      type: widget.type,
    ),
    const MyAcc(),
    const MyCourses(),
    Results(),
    const ChargeWallet(),
    const Suggestions(),
    const Aboutapp(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: scaffoldBackGroundColor,
        body: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Drawer(
              width: 250,
              backgroundColor: Colors.grey[100],
              child: widget.type==visitor?const VisitorViewWidget():
              ListView.builder(
                  itemCount: ProfileModel.tileAndIconComponents.length,
                  itemBuilder: (_, i) => ItemProfileWidget(
                    color: index==i?Colors.white:null,
                      icon: ProfileModel.tileAndIconComponentsForWeb.values.elementAt(i),
                      label: ProfileModel.tileAndIconComponentsForWeb.keys.elementAt(i),
                      onTap: () {
                        if (i == 7) {
                          setState(() {
                            Utils.changeLanguage(context);
                          });
                        }
                        if (i == 8) {
                          AppRouter.navigateAndRemoveAll(const LoginView());
                        } else if (i < ProfileModel.screens.length) {
                          setState(() {
                            index = i;
                            // index++;
                          });
                        }
                      }))),

          Expanded(child: views[index])

        ]));
  }
}
