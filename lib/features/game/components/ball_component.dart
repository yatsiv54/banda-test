import 'dart:async';

import 'package:banda_test_app/features/game/components/block_component.dart';
import 'package:banda_test_app/features/game/game/game.dart';
import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flutter/material.dart';

class BallComponent extends PositionComponent
    with HasGameReference<BandaGame>, CollisionCallbacks {
  double velocityY = 200;
  double velocityX = 0;
  late TextPainter _textPainter;
  int score = 0;
  bool isSlowed = false;
  bool isExpanded = false;
  double fontSize = 15;

  @override
  Future<void> onLoad() async {
    size = Vector2.all(30);

    _textPainter = TextPainter(textDirection: TextDirection.ltr);
    _updateText();

    if (game.isSlowMotionActive) {
      applySlowMotion();
    }
    if (game.isExpandActive) {
      applyExpandBall();
    }

    final x = (game.size.x - size.x - 10) * (game.random.nextDouble());
    position = Vector2(x, -size.y + 20);
    add(CircleHitbox());
  }

  @override
  void update(double dt) {
    position.x += velocityX * dt;
    position.y += velocityY * dt;
    if (position.x <= 0) {
      position.x = 0;
      velocityX = -velocityX;
    }
    if (position.x + size.x >= game.size.x) {
      position.x = game.size.x - size.x;
      velocityX = -velocityX;
    }
    if (position.y <= 0) {
      position.y = 0;
      velocityY = -velocityY;
    }
    if (position.y > game.size.y - 25) {
      game.onBallLost(score);
      removeFromParent();
    }
  }

  @override
  void render(Canvas canvas) {
    final paint = Paint()
      ..color = Colors.pink
      ..maskFilter = const MaskFilter.blur(BlurStyle.solid, 8);
    canvas.drawCircle(Offset(size.x / 2, size.y / 2), size.x / 2, paint);
    final textX = (size.x - _textPainter.width) / 2;
    final textY = (size.y - _textPainter.height) / 2;

    _textPainter.paint(canvas, Offset(textX, textY));
  }

  @override
  void onCollision(Set<Vector2> intersectionPoints, PositionComponent other) {
    super.onCollision(intersectionPoints, other);

    if (other is BlockComponent) {
      score++;
      _updateText();

      final ballRect = toAbsoluteRect();
      final blockRect = other.toAbsoluteRect();
      final intersectRect = ballRect.intersect(blockRect);

      if (intersectRect.width > intersectRect.height) {
        if (ballRect.top < blockRect.top) {
          velocityY = -velocityY.abs();
          position.y -= intersectRect.height;
          final hitPosition = absoluteCenter.x - other.absoluteCenter.x;
          velocityX = hitPosition * 4;
        } else {
          velocityY = velocityY.abs();
          position.y += intersectRect.height;
        }
      } else {
        if (ballRect.left < blockRect.left) {
          velocityX = -velocityX.abs();
          position.x -= intersectRect.width;
        } else {
          velocityX = velocityX.abs();
          position.x += intersectRect.width;
        }
      }
    }
  }

  void _updateText() {
    _textPainter.text = TextSpan(
      text: score.toString(),
      style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
    );
    _textPainter.layout();
  }

  void applyExpandBall() {
    if (isExpanded) {
      return;
    }
    isExpanded = true;
    size = Vector2.all(80);
    fontSize = 40;
    _updateText();
  }

  void restoreExpandBall() {
    if (!isExpanded) {
      return;
    }
    isExpanded = false;
    size = Vector2.all(30);
    fontSize = 15;
    _updateText();
  }

  void applySlowMotion() {
    if (isSlowed) {
      return;
    }
    isSlowed = true;

    velocityX *= 0.5;
    velocityY *= 0.5;
  }

  void restoreSpeed() {
    if (!isSlowed) {
      return;
    }
    isSlowed = false;

    velocityX *= 2;
    velocityY *= 2;
  }
}
