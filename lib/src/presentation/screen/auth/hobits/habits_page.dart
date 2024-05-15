import 'package:firefly_task/src/core/constants/color_const.dart';
import 'package:firefly_task/src/data/permanent/permanent_db.dart';
import 'package:firefly_task/src/presentation/screen/auth/hobits/habit_item.dart';
import 'package:firefly_task/src/presentation/screen/auth/register/components/button.dart';
import 'package:flutter/material.dart';

class HabitsPage extends StatefulWidget {
  HabitsPage({super.key});

  @override
  State<HabitsPage> createState() => _HabitsPageState();
}

class _HabitsPageState extends State<HabitsPage> {
  Color? _containerColor = Colors.grey[300];
  late PermanentDB db;
  // Default container color
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
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Choose your first habits",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text("You may add more habits later",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Wrap(
                      spacing: 24, // Gap between containers
                      runSpacing: 16,
                      alignment: WrapAlignment.center, // Gap between rows
                      children:
                          List.generate(PermanentDB.habits.length, (index) {
                        return HabitItem(
                          onTap: () {
                          
                          },
                          index: index,
                          imageLink: PermanentDB.habits.keys
                              .toList()[index]
                              .toString(),
                          title: PermanentDB.habits.values
                              .toList()[index]
                              .toString(),
                        );
                      }),
                    ),
                  ],
                ),
              ),
            ),
             Button(title: "Next", color: Color(0xFF543B59), icon: "",),
          ],
        ),
      ),
    );
  }
}
