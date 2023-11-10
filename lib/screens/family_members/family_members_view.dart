import 'package:flutter/material.dart';
import 'package:toku_sound_app/screens/family_members/family_members_controller.dart';

import '../../widgets/number_item_row.dart';

class FamilyMembersPage extends StatelessWidget {
  static String id = 'FamilyMembersPage';
   FamilyMembersPage({Key? key}) : super(key: key);
final controller = FamilyController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: const Text('Family Members'),
        backgroundColor: const Color(0xff46322B),
      ),
      body:  ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: controller.images.length,
          itemBuilder: (context,index){
            return ItemRow(
              index: index,
              image: controller.images[index],
              label: controller.labels[index],
              sound: controller.sounds[index],
              color: Colors.green,
            );
          }),
    );
  }
}
