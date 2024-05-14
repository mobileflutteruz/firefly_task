import 'package:firefly_task/src/config/themes/themes.dart';
import 'package:firefly_task/src/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    Map buttons={
      "Apple":AppIcons.appleLogo,
      "Google":AppIcons.googleLogo,
      "Facebook":AppIcons.facebookLogo,
    };
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Container(
            height: 52,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              shadows: [
                BoxShadow(
                  color: Color(0x0F222C5C),
                  blurRadius: 24,
                  offset: Offset(0, 12),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppIcons.loginIcon,
                AppUtils.kGap4,
                Text(
                  'Continue with E-mail',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF040415),
                    fontSize: 14,
                    fontFamily: 'Airbnb Cereal',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          AppUtils.kGap12,

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              ...List.generate(buttons.length, (index) => Container(
                height: 36,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x0F222C5C),
                      blurRadius: 24,
                      offset: Offset(0, 12),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    buttons.values.toList()[index],
                    Text(
                      buttons.keys.toList()[index],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF040415),
                        fontSize: 14,
                        fontFamily: 'Airbnb Cereal',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),)



            ],
          ),
          AppUtils.kGap12,


          Text(
            'By continuing you agree Terms of Services & Privacy Policy ',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFFE6CBBF),
              fontSize: 12,
              fontFamily: 'Airbnb Cereal',
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
