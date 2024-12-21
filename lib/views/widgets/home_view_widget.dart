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
      );
  }
}
