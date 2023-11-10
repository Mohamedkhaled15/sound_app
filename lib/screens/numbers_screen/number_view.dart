// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:toku_sound_app/screens/numbers_screen/numbers_controller.dart';
import '../../widgets/number_item_row.dart';

class NumbersView extends StatelessWidget {
   NumbersView({Key? key}) : super(key: key);
  static String id = 'NumbersPage';
  final controller=NumbersController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: const Text('Numbers'),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
          itemCount: controller.images.length,
          itemBuilder: (context,index){
        return ItemRow(index: index,
          image: controller.images[index],
          label: controller.numbers[index],
          sound: controller.sounds[index],
          color: Colors.orange,
        );
      })
    );
  }
}

