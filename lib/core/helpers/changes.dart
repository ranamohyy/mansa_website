import 'package:flutter/material.dart';
import 'package:mansa/core/utils/constans.dart';

 class Changes{
   static List<bool>chargeStatus=List.generate(6, (index) => false,);

 static String  changeText(type,itemIndex){
   if(type==ourStudent||chargeStatus[itemIndex]){
    return "Third Secondary";
   }else {
     return "buy course";

   }
 }
  static Icon changeIcon(type,itemIndex){
   if( type==ourStudent||chargeStatus[itemIndex]){
   return  Icon(Icons.slow_motion_video, size: 90,
     color: Colors.grey[400],);}
  else{
    return Icon(Icons.lock_outline,  size: 90,
      color: Colors.grey[400],);
  }
 }
  changeOnTap(){}



}