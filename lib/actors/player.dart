import 'dart:async';

import 'package:flame/components.dart';
import 'package:pixel_adventure/pixel_adventure.dart';

enum PlayerState { idle, running }

class Player extends SpriteAnimationComponent with HasGameRef<PixelAdventure> {
  late final SpriteAnimation idleAnimation;
  final double stepTime = 0.05;

  // Define animations and current variables
  late Map<PlayerState, SpriteAnimation> animations;
  late PlayerState current;

  @override
  FutureOr<void> onLoad() {
    _loadAllAnimations();
    return super.onLoad();
  }

  void _loadAllAnimations() {
    idleAnimation = SpriteAnimation.fromFrameData(
      game.images.fromCache('Main Characters/Ninja Frog/Idle (32x32).png'),
      SpriteAnimationData.sequenced(
        amount: 11,
        stepTime: stepTime,
        textureSize: Vector2.all(32),
      ),
    );

    // List of all animations
    animations = {PlayerState.idle: idleAnimation};
    // Set the current animation
    current = PlayerState.idle;
  }
}
