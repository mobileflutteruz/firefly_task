import 'package:flutter/material.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CommonAppBar({super.key, required this.title, this.backOnTap});

  final String title;
  final void Function()? backOnTap;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      // elevation: 10,
      // surfaceTintColor: Colors.white,
      shadowColor: const Color(0x1E1E388B),
      backgroundColor: Colors.black,
      leading: backOnTap==null?null:GestureDetector(
        onTap: () => Navigator.pop(context),
        child: const Icon(
          Icons.arrow_back_outlined,
          color: Colors.white,
        ),
      ),

      title: Text(
        title,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontFamily: 'Golos',
          fontWeight: FontWeight.w700,
        ),
      ),
      // primary: false,
      // automaticallyImplyLeading: false,
      // excludeHeaderSemantics: false,
    );

    //   AppBar(
    //   automaticallyImplyLeading: false,
    //   backgroundColor: ColorConstants.cffffff,
    //   leading: backOnTap != null
    //       ? GestureDetector(
    //     onTap: backOnTap,
    //     child: Padding(
    //       padding: const EdgeInsets.all(16.0),
    //       child: IconConstants.leftArrow,
    //     ),
    //   )
    //       : null,
    //   elevation: 20,
    //   surfaceTintColor: ColorConstants.cffffff,
    //   shadowColor: const Color(0x11050505),
    //   foregroundColor: ColorConstants.cffffff,
    //   title: Text(
    //     title,
    //     style: Styles.manropeMedium18.copyWith(
    //       color:  ColorConstants.c0E1A23,
    //     ),
    //   ),
    //   centerTitle: false,
    // );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class GradientAppBar extends StatelessWidget implements PreferredSizeWidget {
  const GradientAppBar({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(0xffFFD99E),
                Color(0xffD49C48),
              ]),
        ),
        child: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: false,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(
              Icons.arrow_back_outlined,
              color: Color(0xFFffffff),
            ),
          ),

          title: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xFFffffff),
              fontSize: 18,
              fontFamily: 'Golos',
              fontWeight: FontWeight.w700,
            ),
          ),
          // primary: false,
          // automaticallyImplyLeading: false,
          // excludeHeaderSemantics: false,
        ),
      ),
    );
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 10,
      surfaceTintColor: Colors.white,
      shadowColor: const Color(0x1E1E388B),
      foregroundColor: Colors.black,

      backgroundColor: const Color(0xFFFAFBFF),
      // elevation: 5/,
      leading: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: const Icon(
          Icons.arrow_back_outlined,
          color: Color(0xFF252936),
        ),
      ),

      title: Text(
        title,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Color(0xFF1E388B),
          fontSize: 18,
          fontFamily: 'Golos',
          fontWeight: FontWeight.w700,
        ),
      ),
      // primary: false,
      // automaticallyImplyLeading: false,
      // excludeHeaderSemantics: false,
    );

    //   AppBar(
    //   automaticallyImplyLeading: false,
    //   backgroundColor: ColorConstants.cffffff,
    //   leading: backOnTap != null
    //       ? GestureDetector(
    //     onTap: backOnTap,
    //     child: Padding(
    //       padding: const EdgeInsets.all(16.0),
    //       child: IconConstants.leftArrow,
    //     ),
    //   )
    //       : null,
    //   elevation: 20,
    //   surfaceTintColor: ColorConstants.cffffff,
    //   shadowColor: const Color(0x11050505),
    //   foregroundColor: ColorConstants.cffffff,
    //   title: Text(
    //     title,
    //     style: Styles.manropeMedium18.copyWith(
    //       color:  ColorConstants.c0E1A23,
    //     ),
    //   ),
    //   centerTitle: false,
    // );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
