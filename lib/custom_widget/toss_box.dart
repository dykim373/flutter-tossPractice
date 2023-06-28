import 'package:flutter/material.dart';

class TossBox extends StatelessWidget {
  final double topMargin;
  final double bottomMargin;
  final double topPadding;
  final double bottomPadding;
  final double widthRatio;
  final double? heightRatio;
  final Widget? child;
  const TossBox({
    super.key,
    this.topMargin = 0,
    this.bottomMargin = 0,
    this.topPadding = 25,
    this.bottomPadding = 25,
    this.widthRatio = 0.9,
    this.heightRatio,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * widthRatio,
      //높이 지정 안하면 auto (height: null)
      height: heightRatio != null
          ? MediaQuery.of(context).size.height * (heightRatio!)
          : null,
      margin: EdgeInsets.fromLTRB(0, topMargin, 0, bottomMargin),
      padding: EdgeInsets.fromLTRB(25, topPadding, 25, bottomPadding),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0.5,
            blurRadius: 7,
            offset: const Offset(0, 0),
          ),
        ],
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(30)),
      ),
      child: child,
    );
  }
}
