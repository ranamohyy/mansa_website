import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mansa/core/utils/constans.dart';
import 'package:mansa/views/widgets/app_bar_helper.dart';
import '../widgets2/custom_video_icon.dart';
import '../widgets2/text_auth.dart';
class CourseDetailsView extends StatelessWidget {
  const CourseDetailsView({super.key,
    required this.cousreLable,
    required this.details});
  final String cousreLable;
  final String details;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return  Scaffold(
      backgroundColor:scaffoldBackGroundColor,
      appBar:const AppBarHelper(text:"" ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [

                Container(
                  decoration: BoxDecoration(
                      color:Colors.black,
                      borderRadius: BorderRadius.circular(12.r) ),
                  height: height*0.25,
                ),
                CustomVideoIcon()
              ],
            ),
            SizedBox( height: 12.h,),
            TextAuth(text:cousreLable ,),
            // SizedBox( height: 12.h,),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22.0,vertical: 8),
                child: Text(
                  details,
                  style: kTextStyle15.copyWith(color:
                Colors.grey[500]
                ),),
              ),
            )


          ],
        ),
      ),

    );
  }
}
