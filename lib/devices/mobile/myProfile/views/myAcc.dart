import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mansa/core/res/responsive.dart';
import 'package:mansa/views/widgets/body_user_details_view.dart';
import '../../../../views/widgets/app_bar_helper.dart';

class MyAcc extends StatelessWidget {
  const MyAcc({super.key});
  @override
  Widget build(BuildContext context) {
    return
      Responsive.isWeb(context)?  Center(
        child: Container(
          width: 450,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: BodyUserDetailsView(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              widthOfButton:
              Responsive.isWeb(context)?240:200,
            ),

          ) ,
        ),
      ):
      Scaffold(
        backgroundColor: Colors.white,
        appBar:
        Responsive.isMob(context)?const AppBarHelper(
          text: "Myaccount",
        ):null,
        body:
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child:
            Responsive.isMob(context)?
            BodyUserDetailsView()
           : Center(
              child: Container(
                width: 450,
                height: MediaQuery.of(context).size.height,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: BodyUserDetailsView(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    widthOfButton:
                    Responsive.isWeb(context)?240:200,
                  ),

                ) ,
              ),
            )

          )
        )
    );
  }
}
