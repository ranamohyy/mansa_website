import 'package:flutter/material.dart';
import 'package:mansa/core/utils/constans.dart';

class MyButton extends StatelessWidget {
   MyButton({super.key,required this.onPressed,required this.child,this.fixedSize,this.backgroundColor});
  void Function() onPressed;
    Widget child;
   Size? fixedSize;
   Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize:fixedSize,
          backgroundColor:backgroundColor?? kPrimaryColor,
        ),
        onPressed:onPressed,

        child: child
    );
  }
}
