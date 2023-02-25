import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../utils/constant.dart';

class LoginScreenTopImage extends StatelessWidget {
  const LoginScreenTopImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "step 1/5",
          style: TextStyle(fontWeight: FontWeight.bold,
            color: Color(0xFFB8A7EA)
          ),
        ),
        SizedBox(height: defaultPadding * 2),
       Container(
           child:  Image(image:
           AssetImage('images/phone.jpg'),
             height: 150,
           ),
       ),
        SizedBox(height: defaultPadding * 2),
        Container(
          child: Text(
            "Registration",
            style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 22
            ),
          )

        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "Enter your mobile number we will send you OTP to verify later ",
            style: TextStyle( fontSize: 11,
              height: 1.5,),
          ),
        ),
        const SizedBox(height: defaultPadding),
        const SizedBox(height: defaultPadding),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 285.0,
        child: TextField(
          decoration: InputDecoration(labelText: 'Enter mobile no.'),
        inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly
        ],// Only numbers can be entered
        keyboardType: TextInputType.number,
        ),
      ),
    ),
      ],

    );
  }
}