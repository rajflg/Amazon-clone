import 'package:flutter/material.dart';

class Kachraaa extends StatefulWidget {
  const Kachraaa({super.key});

  @override
  State<Kachraaa> createState() => _KachraaaState();
}

class _KachraaaState extends State<Kachraaa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: Center(child: Image.asset("asset/images/img.png")),),
    );
  }
}
