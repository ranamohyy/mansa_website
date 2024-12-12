import 'package:flutter/material.dart';
import 'package:mansa/core/utils/constans.dart';
import 'package:mansa/models/courses_model.dart';
import 'package:mansa/views/myProfile/view.dart';
import 'package:mansa/views/widgets/item_courses_widget.dart';

import '../../core/utils/utils.dart';
import '../mobile/myProfile/view.dart';

class WebHomeView extends StatelessWidget {
  const WebHomeView({super.key, required this.type});
  final String type;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Row(children: [
          Drawer(
            child: MobileMyProfile(
              type: type,
            ),
          ),
          Expanded(
              child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: HomeModel.labelOfCourses.length,
                  scrollDirection: Axis.vertical,
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: Utils.sizeOfItemWeb(context),
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 15),
                  itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: ItemCoursesWidget(
                            type: type,
                            labels: HomeModel.labelOfCourses[index]),
                      ))),
        ]));
  }
}
