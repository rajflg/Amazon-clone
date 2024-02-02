import 'package:flutter/material.dart';

class CostomButton extends StatefulWidget {
  final Widget child;
  final Color color;
  final bool isLoding;
  final VoidCallback onpressed;
  const CostomButton({super.key, required this.child, required this.color, required this.isLoding, required this.onpressed});

  @override
  State<CostomButton> createState() => _CostomButtonState();
}

class _CostomButtonState extends State<CostomButton> {
  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    return TextButton(
        style: ElevatedButton.styleFrom(
          primary: widget.color,
          fixedSize: Size(screensize.height*0.5, screensize.width*0.10),
        ),
        onPressed: widget.onpressed, child: !widget.isLoding? widget.child : CircularProgressIndicator(color: Colors.white,)  );
  }
}
