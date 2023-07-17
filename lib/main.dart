import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_game/helpers/navigation_keys.dart';
import 'dino_game.dart';

void main() {
  final game = DinoGame();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            GameWidget(
              game: game,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: NavigationKeys(onDirectionChanged: game.onArrowKeyChanged,),
            ),
          ],
        ),
      ),
    ),
  );
}