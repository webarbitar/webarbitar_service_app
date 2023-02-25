import 'package:flutter/material.dart';
import '../../utils/constant.dart';

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 8,
              child:  Image(image:
              AssetImage('images/logo3.jpg'),
              height: 250,
              )
            ),
          ],
        ),
        Text(
          "Let's get started",
          style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 20)
          ,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            "Lorem ipsum dolor sit adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim ",
style: TextStyle( fontSize: 15,
  height: 1.5,),
          ),
        ),
        SizedBox(height: defaultPadding * 2),
        SizedBox(height: defaultPadding * 2),
      ],

    );
  }
}