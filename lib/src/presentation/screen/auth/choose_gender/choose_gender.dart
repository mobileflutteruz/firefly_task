import 'package:firefly_task/src/data/permanent/permanent_db.dart';
import 'package:firefly_task/src/presentation/screen/auth/choose_gender/gender.dart';
import 'package:firefly_task/src/presentation/screen/auth/hobits/habit_item.dart';
import 'package:firefly_task/src/presentation/screen/auth/register/components/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ChooseGender extends StatelessWidget {
  const ChooseGender({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEAECF0),
      appBar: AppBar(
        elevation: 0,
        title: Row(
          children: [
            Container(
              height: 48,
              width: 48,
              padding: const EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xffEAECF0),
                  width: 2,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
              alignment: Alignment.center, // Align the content in the center
              child: const Icon(
                Icons.arrow_back_ios,
                size: 24,
              ),
            ),
            const SizedBox(width: 8), // Adding space between icon and text
            const Text("Create Account",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ))
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Choose your gender",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   
                    Wrap(
                      spacing: 24, // Gap between containers
                      runSpacing: 16,
                      alignment: WrapAlignment.center, // Gap between rows
                      children:
                          List.generate(PermanentDB.gender.length, (index) {
                        return GenderItem(
                          onTap: () {
                          
                          },
                          index: index,
                          imageLink: PermanentDB.gender.keys
                              .toList()[index]
                              .toString(),
                          title: PermanentDB.gender.values
                              .toList()[index]
                              .toString(),
                        );
                      }),
                    ),
                  ],
                ),
              ],
            ),
            Button(),
          ],
        ),
      ),
    );
  }
}
