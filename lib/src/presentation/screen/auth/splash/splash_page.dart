import 'package:firefly_task/src/config/routes/app_router.dart';
import 'package:firefly_task/src/core/constants/image_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class SplashPage extends StatefulWidget {


  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {


   void initState() {
    Future.delayed(
      const Duration(seconds: 2),
    ).then(
      (value) async {
        context.pushNamed(Routes.onbording);
      },
    );

    super.initState();
  }

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
