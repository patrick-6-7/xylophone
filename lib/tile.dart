import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class MusicTile extends StatelessWidget {
  final Color color;
  final int soundNumber;
  final double padding;

  const MusicTile({
    super.key,
    required this.color,
    required this.soundNumber,
    required this.padding,
  });

  void playSound(String soundFileName) async {
    final player = AudioPlayer();
    await player.play(AssetSource(soundFileName), mode: PlayerMode.lowLatency);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Colors.black,
            width: 3,
          ),
        ),
        child: TextButton(
          onPressed: () {
            playSound('note$soundNumber.wav');
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 8,
                width: 8,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                height: 8,
                width: 8,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}