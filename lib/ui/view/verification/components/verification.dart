import 'package:flutter/material.dart';
import 'package:service_app/ui/view/verification/verify.dart';
import '../../../utils/constant.dart';
class verification_f extends StatelessWidget {
  const verification_f({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [

          const SizedBox(height: defaultPadding),
          Hero(
            tag: "login_btn",
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context){
                      return Verify();
                    }));
              },
              child: Text(
                "Continue",
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),

        ],
      ),
    );
  }
}
