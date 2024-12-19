
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mansa/core/routes/route.dart';
import 'package:mansa/core/utils/constans.dart';
import 'package:mansa/models/courses_model.dart';
import 'package:mansa/views/widgets/custom_app_bar.dart';
import 'package:mansa/views/widgets/header_widet.dart';
import 'package:mansa/views/widgets/item_courses_widget.dart';

import '../../devices/mobile/home/course_view.dart';
import '../../devices/mobile/myProfile/views/charge.dart';

class HomeViewWidget extends StatelessWidget {
  HomeViewWidget({super.key,required this.type});
  final String type;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: const MyAppBar(text: "Home"),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
        child:
        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            const HeaderWidget(),
        SizedBox(
          height: 10.h,
        ),
              Column(
                children:
                List.generate(
                  HomeModel.labelOfCourses.length,
                  (index) => Padding(
                      padding: EdgeInsets.only(bottom: 10.h),
                      child: GestureDetector(
                        onTap: (){
                          if(type==ourStudent){
                            AppRouter.navigateTo(
                              CourseView(

                              )
                          );
                        }else if (type == notOurStudent){
                            AppRouter.navigateTo(const ChargeWallet());
                          }
                          else {return;}
                          },
                        child: ItemCoursesWidget(
                            type: type,
                            labels: HomeModel.labelOfCourses[index]),
                      )),
                ),
              ),
            ],
          ),
        ),
    )
      );
  }
}
