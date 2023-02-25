import 'package:flutter/material.dart';
import 'package:service_app/ui/view/verification/components/verification.dart';
import 'package:service_app/ui/view/verification/components/verify_top.dart';

import '../../../core/view_models/services/responsive.dart';
import '../../components/background.dart';

class Verify extends StatelessWidget {
  const Verify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: Responsive(
          mobile: const verify_class(),
          desktop: Row(
            children: [
              const Expanded(
                child: verify_top(),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(
                      width: 450,
                      child: verification_f(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class verify_class extends StatelessWidget {
  const verify_class({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
         verify_top(),
        Row(
          children: const [
            Spacer(),
            Expanded(
              flex: 8,
              child: verification_f(),
            ),
            Spacer(),
          ],
        ),
      ],
    );
  }
}

