import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:toku_sound_app/screens/numbers_screen/number_view.dart';

import '../colors/color_view.dart';
import '../family_members/family_members_view.dart';
import '../phrases/phrases_view.dart';

class HomeController{
  final  List <Color> cardColors=[
    Colors.purple,
    Colors.orange,
    Colors.teal,
    Colors.red,
    Colors.lightGreen,
    Colors.brown
  ];

  final List<String> labels=[
    'Numbers',
    'Family Members',
    'Colors',
    'Phrases',
    '',
    ''
  ];

  final List nav=[
    NumbersView.id,
    FamilyMembersPage.id,
    ColorsPage.id,
    PhrasesPage.id,


  ];
}