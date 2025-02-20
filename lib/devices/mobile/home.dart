import 'package:flutter/material.dart';
import 'package:mansa/views/widgets/home_view_widget.dart';
import '../../views/widgets/custom_nav_bar.dart';
import 'profile.dart';
class HomeMobileView extends StatefulWidget {
   const HomeMobileView({super.key,required this.type});
final String type;
  @override
  State<HomeMobileView> createState() => _HomeMobileViewState();
}

class _HomeMobileViewState extends State<HomeMobileView> {
   int selectedIndex=0;
  late List <Widget>pages=[
    HomeViewWidget(type: widget.type,),
     MobileMyProfile(type:  widget.type,)
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar:
      CustomNavBar(index: selectedIndex,
           onDestinationSelected: (value) {
          setState(() { selectedIndex=value;});
        },
      )


    );
  }
}
