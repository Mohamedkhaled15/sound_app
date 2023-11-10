import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';


class ItemRow extends StatelessWidget {
  final player=AudioPlayer();
  int index;
  ItemRow({
    super.key,
    required this.index,
     this.image,
    required this.label,
    required this.sound,
    required this.color,
  });
final String? image;
final String label;
final String sound;
final Color color;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        image==null?const SizedBox():Container(
          height: 90,
          width: 100,
          color: const Color(0xffFFE4A7),
          child: Image.asset(image!),

        ),
        Expanded(
          child: Container(
            height: 90,
            color: color,
            child: Padding(
              padding: const EdgeInsets.only(left: 10,right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  Text(label,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),
                  ),
                  IconButton(onPressed: ()async {
                    await player.play(AssetSource(sound));
                  },
                      icon: const Icon(Icons.play_arrow_sharp,color: Colors.white,size: 30,)),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}