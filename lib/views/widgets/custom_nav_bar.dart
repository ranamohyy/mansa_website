
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/utils/constans.dart';
class CustomNavBar extends StatefulWidget {
   CustomNavBar({super.key,required this.index,required this.onDestinationSelected});
   int index;
   void Function(int)? onDestinationSelected;
  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  @override
  Widget build(BuildContext context) {
    return   NavigationBarTheme(
        data:const NavigationBarThemeData(
            labelTextStyle: WidgetStatePropertyAll(kTextStyle14White)

        ),
        child: NavigationBar(
            backgroundColor: kColor,
            height: 54.h,
            onDestinationSelected:widget.onDestinationSelected,
            selectedIndex:  widget.index,
            indicatorShape:OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(14.r))) ,
            indicatorColor: Colors.white,
            destinations:<NavigationDestination>[

              NavigationDestination(
                selectedIcon:const  Icon(Icons.home_outlined),
                icon:Icon(Icons.home,color:Colors.white,size: 32.h,),
                label: "home".tr(),

              ),
              NavigationDestination(
                  selectedIcon:const  Icon(Icons.person_outlined),
                  icon:    Icon(Icons.person,color:Colors.white,size: 32.h),
                  label: "account".tr()),


            ]


        ));
  }
}
