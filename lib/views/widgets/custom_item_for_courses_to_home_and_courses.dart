import 'package:flutter/material.dart';
import 'package:mansa/views/lessons/course_view.dart';
import 'package:mansa/models/lessons_model.dart';
import '../../core/routes/route.dart';
import '../../core/utils/utils.dart';
import '../../models/courses_model.dart';
import '../videoPage/course_details.dart';
import 'item_courses_widget.dart';

class CustomItemCoursesForHomeAndCourses extends StatelessWidget {
   const CustomItemCoursesForHomeAndCourses(
      {super.key,required this.index,required this.interScreen,
        required this.type,required this.itemsCount});
   final String interScreen;
 final  int itemsCount;
  final String type;
 final  int index;
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return SliverPadding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
        sliver: SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: Utils.setCountOfItems(context),
            mainAxisSpacing: 15,
            childAspectRatio: Utils.setSizeOfItems(context),
            crossAxisSpacing: 15,
          ),
          delegate: SliverChildBuilderDelegate(
            childCount:itemsCount,
            (context, i) {
              return GestureDetector(

                  onTap:(){
                  if(interScreen=='courses'){
                    AppRouter.navigateTo(
                        CourseDetailsView(
                            courseLabel: LessonsModel.labels[i],
                            details: LessonsModel.captions[i]
                        ));

                  }
                  else if(interScreen=="myCourses"){
                     AppRouter.navigateTo(CourseView(title: HomeModel.labelOfCourses[i]));

                  }
                  else {
                Utils.routeInHomeWithAllTypes(type,
                 HomeModel.labelOfCourses[i],);
                }},
                child: ItemCoursesWidget(
                  labels:
                  labels(index,i),
                  type: type,
                ),
              );
            },
          ),
        ));
  }
  String labels(index,i){
    //labels for home
    if(index==0){
      return HomeModel.labelOfCourses[i];

  }//labels for courseView
    else if(index==1){
      return LessonsModel.labels[i];
    }
    //for mycourses
    else{return "first Chapter";}
  }
}
