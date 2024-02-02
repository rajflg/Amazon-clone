import 'package:flutter/material.dart';
import '../resorces/clour.dart';


class BannerAD extends StatefulWidget {
  const BannerAD({Key? key}) : super(key: key);

  @override
  State<BannerAD> createState() => _BannerADState();
}

class _BannerADState extends State<BannerAD> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Column(
      children: [
        GestureDetector(
          child: Container(
            height: 270,
            child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                        Expanded(
                          child: Image.asset('asset/images/airpot.jpg'),
                        ),
                        Expanded(
                          child: Image.asset("asset/images/mobailbanner.jpg",),
                        ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        width: screenSize.width,
                        height: 150,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              backgroundColor,
                              backgroundColor.withOpacity(0),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
        Container(
          color: backgroundColor,
          width: screenSize.width,
          height: 180,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              getsmallAdsFromIndex(0, 250)
            ],
          ),
        )
      ],
    );
  }
  Widget getsmallAdsFromIndex(int index, double height) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        decoration: ShapeDecoration(
          color: Colors.white,
          shadows: [
            BoxShadow(
              color:Colors.black.withOpacity(0.2),
              blurRadius: 5,
              spreadRadius: 1
            )
          ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        )
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Image.asset('asset/images/application.png'),
                Image.asset('asset/images/kitchen.png'),
              ],
            ),
            SizedBox(height: 5,),
            Text("Hello")
          ],
        ),
      ),
    );
  }
}
