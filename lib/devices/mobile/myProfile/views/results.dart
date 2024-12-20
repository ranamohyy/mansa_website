import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mansa/core/res/responsive.dart';
import 'package:mansa/core/utils/constans.dart';
import 'package:mansa/devices/mobile/auth/widgets/text_auth.dart';
import 'package:mansa/views/widgets/app_bar_helper.dart';
class Results extends StatelessWidget {
   Results({super.key});
final List<String>results =[
  "15 / 20","2 / 5", "4 / 50"
];
final List <String> label = [
  "نتيجة امتحان الباب الأول ",
  "نتيجة الكويز علي الباب الأول ",
  "نتيجة امتحان الباب الأول و الثاني ",

];
  @override
  Widget build(BuildContext context) {
    return
      Responsive.isWeb(context)?
      Scaffold(
        backgroundColor: scaffoldBackGroundColor,
        body: Expanded(child: Padding(
          padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width/8),
          child: Center(
            child: Column(
                children:
            List.generate(label.length,
                  (index) => Padding(
                padding: const EdgeInsets.all(12.0),
                child: Card(
                  shape: Border.symmetric(horizontal:BorderSide(
            style: BorderStyle.solid,
                      width: 0.w)),
                  color:Colors.white,
                  elevation: 0.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextAuth(text:label[index ] ) ,
                      TextAuth(text: results[index],style: kTextStyle15.copyWith(color: kSecondColor),)
                    ],
                  ),
                ),
              ),
            )

            ),
          ),
        ),
        ),
      ):
      Scaffold(
      backgroundColor:scaffoldBackGroundColor,
      appBar:const  AppBarHelper(text: "results"),
      body:
      Column(children:
          List.generate(label.length,
          (index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              shape: Border.symmetric(horizontal:BorderSide(width: 0.w)),
              color:Colors.white,
              elevation: 0.5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                 TextAuth(text:label[index ] ) ,
                  TextAuth(text: results[index],style: kTextStyle15.copyWith(color: kSecondColor),)
                ],
              ),
            ),
          ),
          )

     ),
    );
  }
}
