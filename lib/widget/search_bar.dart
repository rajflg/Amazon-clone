
import 'package:final_amazon_clone/widget/search_screen.dart';
import 'package:flutter/material.dart';

import '../resorces/clour.dart';
import '../uihelper/uihelper.dart';


class SearchBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final bool isReading;
  final bool hasBackBtn;
  const SearchBarWidget({Key? key, required this.isReading, required this.hasBackBtn}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(90);

  @override
  Widget build(BuildContext context) {
    Size ScreenSize = MediaQuery.of(context).size;
    OutlineInputBorder outlineInputBorder = OutlineInputBorder(borderRadius: BorderRadius.circular(7), borderSide: BorderSide(color: Colors.grey, width: 2),);

    return Container(
      height: KAppBarHeight,
        decoration: BoxDecoration(gradient: LinearGradient(colors: backgroundGradint, begin: Alignment.centerLeft, end: Alignment.centerRight)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      hasBackBtn? IconButton(onPressed: (){
        Navigator.pop(context);
      }, icon: Icon(Icons.arrow_back))
          : Container(),
      SizedBox(
          width: ScreenSize.width * 0.7
          , child: Container(
        height: 60,
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.3), blurRadius: 8,spreadRadius: 1, offset: Offset(0,5))]
        ),
            child: TextField(
                    readOnly: isReading,
                    onTap: (){
            if(isReading){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Search_screen()));
            }
                    },
                    decoration: InputDecoration(
            hintText: "Search for Something in amazon",
            prefixIcon: Icon(Icons.search),
            suffixIcon: Icon(Icons.camera_alt_outlined),
            fillColor: Colors.white,
            filled: true,
            border: outlineInputBorder,
            focusedBorder: outlineInputBorder
                    ),),
          )),
    IconButton(onPressed: (){}, icon: const Icon(Icons.mic_outlined,size: 40,color: Colors.black,))
      ],),);
  }
}
