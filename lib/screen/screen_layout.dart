import 'package:flutter/material.dart';

import '../resorces/clour.dart';
import '../uihelper/uihelper.dart';

class Screen_layout extends StatefulWidget {
  const Screen_layout({super.key});

  @override
  State<Screen_layout> createState() => _Screen_layoutState();
}

class _Screen_layoutState extends State<Screen_layout> {
  @override
  Widget build(BuildContext context) {
    PageController pagecontroller = PageController();
    int currentpage = 0;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: PageView(
            controller: pagecontroller,
            children: screens
        ),
        bottomNavigationBar: TabBar(
          indicator: BoxDecoration(
              border: Border(
                  top: BorderSide(color: asynaccolour, width: 9,)
              )
          ),
          onTap: (int page){
            pagecontroller.jumpToPage(page);
            setState(() {
              currentpage = page;
            });
          },
          indicatorSize: TabBarIndicatorSize.label
          ,tabs: [
          Tab(
            child: Icon(Icons.home_outlined, color: currentpage==0? Colors.black: Colors.black ),
          ),
          Tab(
            child: Icon(Icons.account_circle_outlined, color: currentpage==1? asynaccolour: Colors.black ),
          ),
          Tab(
            child: Icon(Icons.shopping_cart_outlined,color: currentpage==2? asynaccolour: Colors.black ),
          ),
          Tab(
            child: Icon(Icons.menu,color: currentpage==3? asynaccolour : Colors.black),
          )
        ],),
      ),
    );
  }
}
