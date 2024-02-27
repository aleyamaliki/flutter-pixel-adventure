import 'package:flame/game.dart';
import 'package:flame/flame.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pixel_adventure/pixel_adventure.dart';

void main() async {
  
  WidgetsFlutterBinding.ensureInitialized();
  //fullscreen  mode on mobile devices
  await Flame.device.fullScreen();
  //set on landscape
  await Flame.device.setLandscape();
  PixelAdventure game = PixelAdventure();
  //runApp(GameWidget(game: game));
  //kdebug mode for testing
  runApp(GameWidget(game: kDebugMode ? PixelAdventure() : game),);
}

