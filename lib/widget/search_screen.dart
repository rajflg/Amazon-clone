
import 'package:final_amazon_clone/widget/search_bar.dart';
import 'package:flutter/material.dart';

class Search_screen extends StatelessWidget {
  const Search_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchBarWidget(isReading: false, hasBackBtn: true,),
    );
  }
}
