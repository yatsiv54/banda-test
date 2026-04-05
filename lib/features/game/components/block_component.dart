import 'package:banda_test_app/features/game/game/game.dart';
import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flutter/material.dart';

class BlockComponent extends PositionComponent
    with DragCallbacks, HasGameReference<BandaGame>, CollisionCallbacks {
  bool moveLeftActive = false;
  bool moveRightActive = false;
  bool isBigger = false;

  void moveLeft(bool isMoving) => moveLeftActive = isMoving;

  void moveRight(bool isMoving) => moveRightActive = isMoving;

  @override
  Future<void> onLoad() async {
    size = Vector2(60, 20);
    position = Vector2((game.size.x - size.x) / 2, game.size.y - size.y - 20);
    add(RectangleHitbox());
  }

  @override
  void update(double dt) {
    const speed = 500;
    if (moveLeftActive) {
      position.x -= speed * dt;
    }
    if (moveRightActive) {
      position.x += speed * dt;
    }
    position.x = position.x.clamp(10, game.size.x - size.x - 10);
  }

  @override
  void render(Canvas canvas) {
    final glowPaint = Paint()
      ..color = Colors.blue
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, 1);

    canvas.drawRRect(
      RRect.fromRectAndRadius(size.toRect(), Radius.circular(8)),
      glowPaint,
    );
  }

  void applyBiggerBonus() {
    if (isBigger) return;
    isBigger = true;
    size.x = 120;
  }

  void restoreBiggerBonus() {
    if (!isBigger) return;
    isBigger = false;
    size.x = 60;
  }
}
