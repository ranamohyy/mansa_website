import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mansa/views/widgets/custom_button_for_devices.dart';
import '../../core/helpers/custom_my_input.dart';
import '../../devices/mobile/auth/widgets/text_auth.dart';
class BodyUserDetailsView extends StatefulWidget {
   BodyUserDetailsView({super.key,this.widthOfButton,
     this.crossAxisAlignment,this.mainAxisAlignment});
  MainAxisAlignment? mainAxisAlignment;
  CrossAxisAlignment?crossAxisAlignment;
  double ?widthOfButton;

  @override
  State<BodyUserDetailsView> createState() => _BodyUserDetailsViewState();
}

class _BodyUserDetailsViewState extends State<BodyUserDetailsView> {
  @override
  Widget build(BuildContext context) {
    final gap =SizedBox(height: 8.h,);
    final space = SizedBox(height: 4.h,);
    return  Column(
      mainAxisAlignment: widget.mainAxisAlignment??MainAxisAlignment.center,
      crossAxisAlignment: widget.crossAxisAlignment??
      CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        TextAuth(text: "userName"),
        space,
        MyInput(
          text: "رنا عمرو",
          enabled: false,
        ),
        gap,
        TextAuth(
          text: "yourCode",
        ),
        space,
        MyInput(
          text: "1234",
          enabled: false,
        ),
        gap,
        TextAuth(text: "edit password"),
        space,
        MyInput(text: "edit password"),
        gap,
        TextAuth(text: "confirm edit password"),
        space,
        MyInput(
          text: "confirm edit password",
        ),
        SizedBox(height: 30.h,),
        CustomButtonForDevices(
            width: widget.widthOfButton??200.w,
            text:"edit your profile",
            onPressed: (){})
      ],
    );
  }
}
