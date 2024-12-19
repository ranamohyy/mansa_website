import 'package:flutter/material.dart';
import 'package:mansa/core/utils/constans.dart';
import 'package:mansa/views/home/CustomHomeForAllDevices.dart';
import 'package:mansa/views/widgets/custom_app_bar.dart';
class HomeViewWidget extends StatelessWidget {
 const HomeViewWidget({super.key,required this.type});
  final String type;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: const MyAppBar(text: "Home"),
      backgroundColor:scaffoldBackGroundColor,
      body: CustomHomeForAllDevices(
          type: type)
    //   CustomScrollView(
    //     slivers:[SliverPadding(padding: const EdgeInsets.all(8.0),
    //     sliver:
    //     SliverFillRemaining(
    //       child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //           const HeaderWidget(),
    //       SizedBox(
    //         height: 10.h,
    //       ),
    //             Column(
    //               children:
    //               List.generate(
    //                 HomeModel.labelOfCourses.length,
    //                 (index) => Padding(
    //                     padding: EdgeInsets.only(bottom: 10.h),
    //                     child: GestureDetector(
    //                       onTap: (){
    //                         if(type==ourStudent){
    //                           AppRouter.navigateTo(
    //                             CourseView(
    //
    //                             )
    //                         );
    //                       }else if (type == notOurStudent){
    //                           AppRouter.navigateTo(const ChargeWallet());
    //                         }
    //                         else {return;}
    //                         },
    //                       child: ItemCoursesWidget(
    //                           type: type,
    //                           labels: HomeModel.labelOfCourses[index]),
    //                     )),
    //               ),
    //             ),
    //           ],
    //         ),
    //     ),
    //     ),]
    // )
      );
  }
}
