import 'package:firefly_task/src/core/constants/image_const.dart';
import 'package:firefly_task/src/data/permanent/permanent_db.dart';
import 'package:firefly_task/src/presentation/screen/auth/register/components/button.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                ImageConst.background,
              ),
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: PermanentDB.onbording.length,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                itemBuilder: (context, index) {
                  return OnboardingItem(
                    title:
                        PermanentDB.onbording.values.toList()[index].toString(),
                    description: PermanentDB.subtitle[index].toString(),
                    image:
                        PermanentDB.onbording.keys.toList()[index].toString(),
                    widget: _buildIndicators(),
                  );
                },
              ),
            ),
            Button(
              color: Colors.white,
              icon: ImageConst.login,
              title: "Continue with E-mail",
              onTap: () {},
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Chip(
                  label: Row(
                    children: [
                      Image.asset(ImageConst.apple),
                      const Text(
                        'Apple',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF040415),
                          fontSize: 14,
                          fontFamily: 'Airbnb Cereal',
                          fontWeight: FontWeight.w500,
                          height: 0.10,
                        ),
                      ),
                    ],
                  ),
                ),
                Chip(
                  label: Row(
                    children: [
                      Image.asset(ImageConst.google),
                      const Text(
                        'Google',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF040415),
                          fontSize: 14,
                          fontFamily: 'Airbnb Cereal',
                          fontWeight: FontWeight.w500,
                          height: 0.10,
                        ),
                      ),
                    ],
                  ),
                ),
                Chip(
                  label: Row(
                    children: [
                      Image.asset(ImageConst.facebook),
                      const Text(
                        'Facebook',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF040415),
                          fontSize: 14,
                          fontFamily: 'Airbnb Cereal',
                          fontWeight: FontWeight.w500,
                          height: 0.10,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildIndicators() {
    List<Widget> indicators = [];
    for (int i = 0; i < PermanentDB.subtitle.length; i++) {
      indicators.add(
        Container(
          width: 10,
          height: 10,
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentPage == i ? const Color(0xff977464) : Colors.white,
          ),
        ),
      );
    }
    return indicators;
  }
}

class OnboardingItem extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  final List widget;

  const OnboardingItem({
    Key? key,
    required this.title,
    required this.description,
    required this.image,
    required this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(image),
          const SizedBox(height: 20),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontFamily: 'Airbnb Cereal',
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            description,
            style: const TextStyle(
              color: Color(0xFFF6EEEA),
              fontSize: 14,
              fontFamily: 'Airbnb Cereal',
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ...widget,
            ],
          ),
        ],
      ),
    );
  }
}
