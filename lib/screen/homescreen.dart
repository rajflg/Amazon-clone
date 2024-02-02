
import 'package:flutter/material.dart';
import '../uihelper/uihelper.dart';
import '../widget/banner_ad.dart';
import '../widget/search_bar.dart';
import 'categorieshorizontalist.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({Key? key})
      : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchBarWidget(
        isReading: true,
        hasBackBtn: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CategoriesHorizontalList(), BannerAD()
        ],
        ),
      )
    );
  }
}
