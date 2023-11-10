import 'package:flutter/material.dart';
import 'package:toku_sound_app/screens/colors/color_view.dart';
import 'package:toku_sound_app/screens/family_members/family_members_view.dart';
import 'package:toku_sound_app/screens/home/home_view.dart';
import 'package:toku_sound_app/screens/numbers_screen/number_view.dart';
import 'package:toku_sound_app/screens/phrases/phrases_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
debugShowCheckedModeBanner: false,
      routes: {
        NumbersView.id:(context)=> NumbersView(),
        FamilyMembersPage.id:(context)=>FamilyMembersPage(),
        ColorsPage.id:(context)=>ColorsPage(),
        PhrasesPage.id:(context)=>PhrasesPage(),
      },
      home: HomeScreen(),
    );
  }
}

