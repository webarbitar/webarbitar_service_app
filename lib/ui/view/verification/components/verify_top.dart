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
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFB8A7EA)),
        ),
        SizedBox(height: defaultPadding * 2),
        Container(
          child: Image(
            image: AssetImage('images/phone.jpg'),
            height: 150,
          ),
        ),
        SizedBox(height: defaultPadding * 2),
        Container(
            child: Text(
          "Verification",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        )),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "Enter 4 digit number that has sent to your mobile number ",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 11, height: 1.5, color: Colors.grey),
          ),
        ),
        const SizedBox(height: defaultPadding),
        const SizedBox(height: defaultPadding),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 68,
              width: 64,
              child: TextFormField(
                decoration: InputDecoration(hintText: "_"),
                style: Theme.of(context).textTheme.headline6,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly,
                ],
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  }
                },
              ),
            ),
            SizedBox(
              height: 68,
              width: 64,
              child: TextFormField(
                decoration: InputDecoration(hintText: "_"),
                style: Theme.of(context).textTheme.headline6,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly,
                ],
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  }
                },
              ),
            ),
            SizedBox(
              height: 68,
              width: 64,
              child: TextFormField(
                decoration: InputDecoration(hintText: "_"),
                style: Theme.of(context).textTheme.headline6,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly,
                ],
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  }
                },
              ),
            ),
            SizedBox(
              height: 68,
              width: 64,
              child: TextFormField(
                decoration: InputDecoration(hintText: "_"),
                style: Theme.of(context).textTheme.headline6,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly,
                ],
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  }
                },
              ),
            ),
          ],
        ),
        SizedBox(height: defaultPadding * 2),

        Text(
          "Re-send code in 0:30",
          style: TextStyle(
            color: Color((0xFF9C86E0)),
              fontSize: 10)
          ,
        ),
        SizedBox(height: defaultPadding * 1),
      ],
    );
  }
}
