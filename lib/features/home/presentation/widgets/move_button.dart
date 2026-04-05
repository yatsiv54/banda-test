import 'package:banda_test_app/features/game/game/game.dart';
import 'package:banda_test_app/features/game/hud/score/presentation/cubit/score_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum MoveDirection { left, right }

class MoveButton extends StatelessWidget {
  final BandaGame game;
  final MoveDirection direction;
  const MoveButton({super.key, required this.game, required this.direction});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanStart: (_) => _setMove(true),
      onPanEnd: (_) => _setMove(false),
      onPanCancel: () => _setMove(false),

      child: Container(
        height: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: BoxBorder.all(
            color: const Color.fromARGB(255, 20, 89, 146),
            width: 1,
          ),
          color: const Color.fromARGB(255, 16, 63, 102).withValues(alpha: 0.3),
        ),
        child: Icon(
          size: 90,
          color: Colors.blueAccent,
          direction == MoveDirection.left
              ? Icons.keyboard_arrow_left_rounded
              : Icons.keyboard_arrow_right_rounded,
        ),
      ),
    );
  }

  void _setMove(bool value) {
    if (direction == MoveDirection.left) {
      game.moveLeft(value);
    } else {
      game.moveRight(value);
    }
  }
}
