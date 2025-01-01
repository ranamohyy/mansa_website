import 'package:flutter/material.dart';
import 'package:mansa/core/routes/route.dart';
import 'package:mansa/core/utils/constans.dart';
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
                    Utils.changeLanguage(context,widget.type);
                  });
                }
                if (index == 7) {
                  // showDialog(context: context,
                  //   builder: (context) =>
                    // AlertDialog(title: Text("تأكيد الخروج "),
                    // content: const Text("هل تريد تأكيد الخروج؟"),
                    //   actions: [
                    //     TextButton(
                    //         onPressed: (){AppRouter.pop();}, child:const  Text("لأ")),
                    //     TextButton(onPressed: (){
                    //       AppRouter.navigateAndRemoveAll(const LoginView());
                    //     }, child: const Text("نعم"))
                    //   ],
                    // ));
                  AppRouter.navigateAndRemoveAll(const LoginView());
                }
                else if (index < ProfileModel.screens.length) {
                  AppRouter.navigateTo(ProfileModel.screens[index]);
                }
              })),
    );
  }
}
