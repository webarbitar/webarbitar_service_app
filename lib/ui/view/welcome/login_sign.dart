import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/constant.dart';
import '../login/login.dart';
import '../signin/signup.dart';

class LoginAndSignupBtn extends StatelessWidget {
  const LoginAndSignupBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Hero(
          tag: "login_btn",
          child: SizedBox(
            height: 50,
            width: 300,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
              child: Text(
                "Create Account", //login screen
                style: GoogleFonts.sourceCodePro(
                  fontSize: 15,
                ) ,

              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 50,
          width: 300,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignUpScreen();
                  },
                ),
              );
            },
            style: ElevatedButton.styleFrom(
                primary: kPrimaryLightColor,elevation: 0
            ),
            child: Text(
              "Login", //signup screen
              style:  GoogleFonts.sourceCodePro(
                fontSize: 15,
                color: Colors.black
              ) ,
            ),
          ),
        ),
      ],
    );
  }
}
