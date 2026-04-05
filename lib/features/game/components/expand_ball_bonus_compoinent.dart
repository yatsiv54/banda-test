import 'dart:async';

import 'package:banda_test_app/features/game/components/ball_component.dart';
import 'package:banda_test_app/features/game/components/block_component.dart';
import 'package:banda_test_app/features/game/game/game.dart';
import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flutter/material.dart';

class ExpandBall extends PositionComponent
    with HasGameReference<BandaGame>, CollisionCallbacks {
  double velocityY = 160;
  double velocityX = 0;
  late TextPainter _iconPainter;

  @override
  Future<void> onLoad() async {
    size = Vector2.all(30);
    final x = (game.size.x - size.x - 10) * (game.random.nextDouble());
    position = Vector2(x, -size.y + 20);
    add(CircleHitbox());

    _iconPainter = TextPainter(textDirection: TextDirection.ltr);
    _iconPainter.text = TextSpan(
      text: String.fromCharCode(Icons.zoom_out_map.codePoint),
      style: TextStyle(
        fontSize: size.x * 0.7,
        fontFamily: Icons.zoom_out_map.fontFamily,
        package: Icons.zoom_out_map.fontPackage,
        color: Colors.white,
      ),
    );
    _iconPainter.layout();
  }

  @override
  void update(double dt) {
    position.y += velocityY * dt;
    if (position.y > game.size.y - 25) {
      removeFromParent();
    }
  }

  @override
  void render(Canvas canvas) {
    final paint = Paint()
      ..color = Colors.amber
      ..maskFilter = const MaskFilter.blur(BlurStyle.solid, 8);

    canvas.drawCircle(Offset(size.x / 2, size.y / 2), size.x / 2, paint);

    final iconX = (size.x - _iconPainter.width) / 2;
    final iconY = (size.y - _iconPainter.height) / 2;

    _iconPainter.paint(canvas, Offset(iconX, iconY));
  }

  @override
  void onCollision(Set<Vector2> intersectionPoints, PositionComponent other) {
    super.onCollision(intersectionPoints, other);

    if (other is BlockComponent) {
      game.activeExpandBall();
      removeFromParent();
    }
  }
}
