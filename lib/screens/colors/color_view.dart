import 'package:flutter/material.dart';
import 'package:toku_sound_app/screens/colors/color_controller.dart';

import '../../widgets/number_item_row.dart';

class ColorsPage extends StatelessWidget {
  static String id='ColorsPage';
   ColorsPage({Key? key}) : super(key: key);
final controller=ColorController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        title: const Text('Colors'),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: controller.images.length,
          itemBuilder: (context,index){
            return ItemRow(
              index: index,
              image: controller.images[index],
              label: controller.labels[index],
              sound: controller.sounds[index],
              color: Colors.purple,
            );
          }),
    );
  }
}
