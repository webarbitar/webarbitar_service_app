import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../utils/constant.dart';

class verify_top extends StatelessWidget {
  const verify_top({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "step 2/5",
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
              "Verification",
              style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 22
              ),
            )

        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "Enter 4 digit number that has sent to your mobile number ",
            textAlign: TextAlign.center,
            style: TextStyle( fontSize: 11,
              height: 1.5,
            color: Colors.grey),
          ),
        ),
        const SizedBox(height: defaultPadding),
        const SizedBox(height: defaultPadding),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 60,
            width: 150,
            child: TextField(
              // autofocus: autoFocus,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              // controller: controller,
              maxLength: 4,
              cursorColor: Theme.of(context).primaryColor,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  counterText: '',
                  hintStyle: TextStyle(color: Colors.black, fontSize: 20.0)),
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                }
              },
            ),
          ),
        ),
      ],

    );
  }
}
