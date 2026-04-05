import 'dart:async';
import 'dart:math';

import 'package:banda_test_app/features/game/components/ball_component.dart';
import 'package:banda_test_app/features/game/components/bigger_bonus_component.dart';
import 'package:banda_test_app/features/game/components/block_component.dart';
import 'package:banda_test_app/features/game/components/expand_ball_bonus_compoinent.dart';
import 'package:banda_test_app/features/game/components/slow_bonus_component.dart';
import 'package:banda_test_app/features/game/hud/bonuses/data/models/bonus_model.dart';
import 'package:flame/components.dart';
import 'dart:async' as async;
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class BandaGame extends FlameGame with HasCollisionDetection {
  final void Function(int score) onBallLost;
  final void Function(BonusType bonusType) onBonusActive;
  BandaGame({required this.onBallLost, required this.onBonusActive});
  late BlockComponent block;
  final Random random = Random();
  double spawnTime = 0;
  double bonusSpawnTime = 0;
  bool isSlowMotionActive = false;
  bool isBiggerActive = false;
  bool isExpandActive = false;
  bool isBonusActive = false;
  async.Timer? _slowMotionTimer;
  async.Timer? _biggerBonusTimer;
  async.Timer? _expandBallTimer;

  void activeSlowMotion() {
    isBonusActive = true;
    onBonusActive(BonusType.slowMotion);
    isSlowMotionActive = true;
    final allBalls = children.whereType<BallComponent>();
    for (final ball in allBalls) {
      ball.applySlowMotion();
    }
    _slowMotionTimer?.cancel();
    _slowMotionTimer = async.Timer(const Duration(seconds: 5), () {
      isSlowMotionActive = false;
      isBonusActive = false;
      final currentBalls = children.whereType<BallComponent>();
      for (final ball in currentBalls) {
        ball.restoreSpeed();
      }
    });
  }

  void activeExpandBall() {
    isBonusActive = true;
    onBonusActive(BonusType.expandBall);
    isExpandActive = true;
    final allBalls = children.whereType<BallComponent>();
    for (final ball in allBalls) {
      ball.applyExpandBall();
    }
    _expandBallTimer?.cancel();
    _expandBallTimer = async.Timer(const Duration(seconds: 5), () {
      isExpandActive = false;
      isBonusActive = false;
      final currentBalls = children.whereType<BallComponent>();
      for (final ball in currentBalls) {
        ball.restoreExpandBall();
      }
    });
  }

  void activeBiggerBonus() {
    isBonusActive = true;
    onBonusActive(BonusType.biggerBonus);
    isBiggerActive = true;
    block.applyBiggerBonus();

    _biggerBonusTimer?.cancel();
    _biggerBonusTimer = async.Timer(const Duration(seconds: 7), () {
      isBonusActive = false;
      isBiggerActive = false;
      block.restoreBiggerBonus();
    });
  }

  @override
  Color backgroundColor() => Colors.transparent;

  @override
  void update(double dt) {
    super.update(dt);
    spawnTime += dt;
    bonusSpawnTime += dt;
    if (spawnTime > 3) {
      spawnTime = 0;
      add(BallComponent());
    }
    if (bonusSpawnTime > 10 && !isBonusActive) {
      bonusSpawnTime = 0;
      add(_randomBonus());
    }
  }

  @override
  Future<void> onLoad() async {
    block = BlockComponent();
    add(block);
  }

  void moveLeft(bool value) {
    block.moveLeftActive = value;
  }

  void moveRight(bool value) {
    block.moveRightActive = value;
  }

  void resetGame() {
    children.whereType<BallComponent>().forEach(
      (ball) => ball.removeFromParent(),
    );
    children.whereType<BiggerBonus>().forEach(
      (bonus) => bonus.removeFromParent(),
    );
    spawnTime = 0;
    bonusSpawnTime = 0;
    block.position = Vector2(
      (size.x - block.size.x) / 2,
      size.y - block.size.y - 20,
    );
    block.size.x = 60;
    resumeEngine();
  }

  PositionComponent _randomBonus() {
    final number = Random().nextInt(3);
    switch (number) {
      case 0:
        return SlowBonus();
      case 1:
        return BiggerBonus();
      case 2:
        return ExpandBall();
      default:
        return SlowBonus();
    }
  }
}
