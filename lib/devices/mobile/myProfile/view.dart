import 'package:flutter/material.dart';
import 'package:mansa/core/res/responsive.dart';
import 'package:mansa/views/widgets/custom_app_bar.dart';
import '../../../core/utils/constans.dart';
import '../../../views/widgets/custom_profle_tiles_widget.dart';
import '../../../views/widgets/visitor_view_widget.dart';
class MobileMyProfile extends StatelessWidget {
  const MobileMyProfile({super.key, this.type});
final String ?type;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:
      Responsive.isMob(context)?
      const MyAppBar(text: "account"):null,
      backgroundColor: Colors.white,
      body:
      type ==visitor || type==null ?
      const VisitorViewWidget() :
       CustomProfileWidget(type: type!,)
    );
  }
}
