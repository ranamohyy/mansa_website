import 'package:flutter/material.dart';
import 'package:mansa/views/lessons/course_view.dart';
import 'package:mansa/models/lessons_model.dart';
import '../../core/helpers/changes.dart';
import '../../core/routes/route.dart';
import '../../core/utils/utils.dart';
import '../../models/courses_model.dart';
import '../videoPage/course_details.dart';
import 'item_courses_widget.dart';

class CustomItemCoursesForHomeAndCourses extends StatefulWidget {
  const CustomItemCoursesForHomeAndCourses(
      {super.key,
      required this.index,
      required this.interScreen,
      required this.type,
      required this.itemsCount});
  final String interScreen;
  final int itemsCount;
  final String type;
  final int index;

  @override
  State<CustomItemCoursesForHomeAndCourses> createState() =>
      _CustomItemCoursesForHomeAndCoursesState();
}

class _CustomItemCoursesForHomeAndCoursesState
    extends State<CustomItemCoursesForHomeAndCourses> {
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
        sliver: SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: Utils.setCountOfItems(context),
              mainAxisSpacing: 15,
              childAspectRatio: Utils.setSizeOfItems(context),
              crossAxisSpacing: 15,
            ),
            delegate: SliverChildBuilderDelegate(childCount: widget.itemsCount,
                (context, i) {
              return GestureDetector(
                  onTap: () {
                    if (widget.interScreen == 'courses') {
                      AppRouter.navigateTo(CourseDetailsView(
                          courseLabel: LessonsModel.labels[i],
                          details: LessonsModel.captions[i]));
                    }
                    else if (widget.interScreen == "myCourses") {
                      AppRouter.navigateTo(
                          CourseView(title: HomeModel.labelOfCourses[i]));
                    }
                    else {
                      Utils.routeInHomeWithAllTypes(
                          widget.type, HomeModel.labelOfCourses[i], i,Changes.chargeStatus[i]);
                    }

                  },
                  child: ItemCoursesWidget(
                    itemIndex: i,
                    doneCharge: Changes.chargeStatus[i],
                    labels: Changes.labels(widget.index, i),
                    type: widget.type,
                  ));
            })));
  }
}
