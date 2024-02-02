import 'package:flutter/material.dart';

class Utils {
 showSnakeBar({required BuildContext context, required String content}){
   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
       backgroundColor: Colors.orange, //edit
       shape: RoundedRectangleBorder(borderRadius: const BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10))),//edit
       content: Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text(content)
         ],
       )
   ));
 }
}