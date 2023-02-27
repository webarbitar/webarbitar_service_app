import 'package:flutter/material.dart';

import '../../../ui/utils/color_utils.dart';





class RaisedGradientButton extends StatelessWidget {
  final Widget child;
  final double width;
  final double height;
  final VoidCallback onPressed;

  RaisedGradientButton({
    required Key key,
    required this.child,
    this.width = double.infinity,
    this.height = 40.0,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Gradient _gradient = LinearGradient(
        colors: [ColorUtils.themeGradientStart, ColorUtils.themeGradientEnd]);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: new BorderRadius.all(Radius.circular(40.0)),
          gradient: _gradient,
          boxShadow: [
            BoxShadow(
              color:Colors.grey,
              offset: Offset(0.0, 1.5),
              blurRadius: 1.5,
            ),
          ]),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
            borderRadius: new BorderRadius.all(Radius.circular(40.0)),
            onTap: onPressed,
            child: Center(
              child: child,
            )),
      ),
    );
  }
}