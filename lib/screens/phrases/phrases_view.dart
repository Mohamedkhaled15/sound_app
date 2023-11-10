import 'package:flutter/material.dart';
import 'package:toku_sound_app/screens/phrases/phrases_controller.dart';

import '../../widgets/number_item_row.dart';

class PhrasesPage extends StatelessWidget {

   PhrasesPage({Key? key}) : super(key: key);
   static String id='PhrasesPage';
final controller=PhrasesController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: const Text('Phrases'),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: controller.sounds.length,
          itemBuilder: (context,index){
            return ItemRow(
              index: index,
              label: controller.labels[index],
              sound: controller.sounds[index],
              color: Colors.teal,
            );
          }),
    );
  }
}
