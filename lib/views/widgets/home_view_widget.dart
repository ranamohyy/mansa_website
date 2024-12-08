import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mansa/core/routes/route.dart';
import 'package:mansa/core/utils/constans.dart';
import 'package:mansa/views/widgets/custom_app_bar.dart';
import 'package:mansa/views/widgets/header_widet.dart';
import 'package:mansa/views/widgets/item_courses_widget.dart';

import '../../devices/mobile/home/course_view.dart';
import '../../devices/mobile/myProfile/views/charge.dart';

class HomeViewWidget extends StatelessWidget {
  HomeViewWidget({super.key,required this.type});
  final String type;
  List<String> Labels = [
    "basics",
    "first Chapter",
    "Second Chapter",
    "Third Chapter",
    "Fourth Chapter",
    "Fifth Chapter",
  ];
  List<String> label = [
    "الأساسيات",
    "الباب الأول",
    "الباب الثانى",
    "الباب الثالث",
    "الباب الرابع",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: const MyAppBar(text: "Home"),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderWidget(),
              SizedBox(
                height: 10.h,
              ),
              Column(
                children: List.generate(
                  Labels.length,
                  (index) => Padding(
                      padding: EdgeInsets.only(bottom: 10.h),
                      child: GestureDetector(
                        onTap: (){
                          if(type==ourStudent){
                            AppRouter.navigateTo(
                              CourseView(
                                appBar: label[index],
                              )
                          );
                        }else if (type == notOurStudent){
                            AppRouter.navigateTo(const ChargeWallet());
                          }
                          else {return;}
                          },
                        child: ItemCoursesWidget(
                            type: type,
                            labels: Labels[index]),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
