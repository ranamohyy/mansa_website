import 'package:flutter/material.dart';
import 'package:mansa/models/lessons_model.dart';
import '../../core/utils/utils.dart';
import '../../models/courses_model.dart';
import 'item_courses_widget.dart';

class CustomItemCoursesForHomeAndCourses extends StatelessWidget {
   CustomItemCoursesForHomeAndCourses(
      {super.key,required this.index,this.onTap,
        required this.type,required this.itemsCount});
 final  int itemsCount;
  final String type;
  void Function()? onTap;
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
            onTap: () =>onTap?? Utils.routeInHomeWithAllTypes(type,
                 HomeModel.labelOfCourses[i]

            ),
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
    print("==========${index}");
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
