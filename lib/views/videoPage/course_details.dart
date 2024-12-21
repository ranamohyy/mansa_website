import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mansa/core/utils/constans.dart';
import 'package:mansa/views/videoPage/view.dart';
import 'package:mansa/views/widgets/app_bar_helper.dart';
import '../widgets2/text_auth.dart';
class CourseDetailsView extends StatefulWidget {
  const CourseDetailsView({super.key,
    required this.courseLabel,
    required this.details});
  final String courseLabel;
  final String details;
  @override
  State<CourseDetailsView> createState() => _CourseDetailsViewState();
}
class _CourseDetailsViewState extends State<CourseDetailsView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:scaffoldWhiteBackGround,
      appBar:const AppBarHelper(text:"" ),
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                VideoScreen(),
                SizedBox( height: 12.h,),
                TextAuth(text:widget.courseLabel ,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22.0,vertical: 8),
                  child: Text(
                    widget.details,
                    style: kTextStyle15.copyWith(color:
                    Colors.grey[500]
                    ),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
