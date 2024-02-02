import 'package:flutter/cupertino.dart';

import '../resorces/clour.dart';

class AccountScreenAppBar extends StatelessWidget implements PreferredSizeWidget{
  const AccountScreenAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(90);

  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    return Container(
      height: 80,
      width: screensize.width,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: backgroundGradint, begin: Alignment.centerLeft, end: Alignment.centerRight)),
    );
  }
}