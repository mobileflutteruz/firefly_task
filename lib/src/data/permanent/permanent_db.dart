import 'package:firefly_task/src/core/constants/image_const.dart';
import 'package:flutter/material.dart';

class PermanentDB {
  static Map<String, String?> habits = {
    ImageConst.tomchi: "Drink water",
    ImageConst.run: "Run",
    ImageConst.book: "Read books",
    ImageConst.meditate: "Meditate",
    ImageConst.study: "Study",
    ImageConst.journal: "Journal",
    ImageConst.tree: "Tree",
    ImageConst.sleep: "Sleep",
  };

  static Map<String, String?> gender = {
    ImageConst.male: "Male",
    ImageConst.female: "Female",
  };

  static Map<String, String?> onbording = {
    ImageConst.users: "Create Good Habits",
    ImageConst.users2: "Track Your Progress",
  };
  static List subtitle = [
    "hange your life by slowly adding new healty habits and sticking to them.", 
    'Everyday you become one step closer to\nyour goal. Don’t give up!',
  ]; 
}
