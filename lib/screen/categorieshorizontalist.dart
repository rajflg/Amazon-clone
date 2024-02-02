import 'package:flutter/material.dart';
import '../uihelper/uihelper.dart';

class CategoriesHorizontalList extends StatelessWidget {
  const CategoriesHorizontalList({Key? key});

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 100,
      width: double.infinity,
      color: Colors.white,
      child: ListView.builder(
        itemCount: categoriesHorizontalList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 45,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("asset/images/toy.png"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0),
                    child: Text(categoriesHorizontalList[index]),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }


}
