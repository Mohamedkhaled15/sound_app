import 'package:flutter/material.dart';

import '../screens/home/home_controller.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    super.key,
    required this.controller,
    required this.index,
  });

  final HomeController controller;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, controller.nav[index]);
      },
      child: Container(
        decoration: const BoxDecoration(boxShadow: [
          BoxShadow(
              blurRadius: 5,
              color: Colors.grey,
              spreadRadius: 0,
              offset: Offset(1, 5))
        ]),
        child:  Card(
            clipBehavior: Clip.none,
            color:controller.cardColors[index] ,
            child: Center(

              child: Text(controller.labels[index],
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
        ),
      ),
    );
  }
}
