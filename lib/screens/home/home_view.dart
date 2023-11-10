import 'package:flutter/material.dart';

import '../../widgets/home_card.dart';
import 'home_controller.dart';

class HomeScreen extends StatelessWidget {

   HomeScreen({Key? key}) : super(key: key);
  final controller =HomeController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xfffef6db),
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text('Toku'),
      ),
      body: Padding(
        padding:  const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 30,
            mainAxisExtent: 200
          ),
            itemCount: controller.cardColors.length,
            itemBuilder: (context,index){
              return HomeCard(controller: controller,index: index,);
            }, ),
      ),

    );
  }
}

