import 'package:flutter/material.dart';
import 'package:mansa/core/routes/route.dart';
import 'package:mansa/models/profile_model.dart';
import 'package:mansa/views/auth/login/view.dart';
import '../../core/utils/utils.dart';
import 'custom_item_profile_widget.dart';

class CustomProfileWidget extends StatefulWidget {
const  CustomProfileWidget({super.key, required this.type,
  });
  final String type;

  @override
  State<CustomProfileWidget> createState() => _CustomProfileWidgetState();
}

class _CustomProfileWidgetState extends State<CustomProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child:
      ListView.builder(
          itemCount: ProfileModel.tileAndIconComponents.length,
          itemBuilder: (context, index) => ItemProfileWidget(
              icon:
              ProfileModel.tileAndIconComponents.values.elementAt(index),
              label:
              ProfileModel.tileAndIconComponents.keys.elementAt(index),
              onTap: () {
                if (index == 6) {
                  setState(() {
                    Utils.changeLanguage(context);
                  });
                }
                if (index == 7) {
                  AppRouter.navigateAndRemoveAll(const LoginView());
                }
                else if (index < ProfileModel.screens.length) {
                  AppRouter.navigateTo(ProfileModel.screens[index]);
                }
              })),
    );
  }
}
