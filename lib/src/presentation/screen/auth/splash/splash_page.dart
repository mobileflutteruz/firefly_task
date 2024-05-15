import 'package:firefly_task/src/core/constants/image_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                ImageConst.background,
              ),
              fit: BoxFit.cover),
        ),
        child: Center( 
          child: SvgPicture.asset(ImageConst.logo),
        ),
      ),
    );
  }
}
