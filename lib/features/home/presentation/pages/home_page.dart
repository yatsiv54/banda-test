import 'dart:ui';

import 'package:banda_test_app/features/game/hud/menu/presentation/cubit/menu_cubit.dart';
import 'package:banda_test_app/features/game/hud/menu/presentation/widgets/menu_widget.dart';
import 'package:banda_test_app/features/home/presentation/widgets/move_button.dart';
import 'package:banda_test_app/features/game/game/game.dart';
import 'package:banda_test_app/features/game/hud/bonuses/data/models/bonus_model.dart';
import 'package:banda_test_app/features/game/hud/bonuses/presentation/cubit/bonus_cubit.dart';
import 'package:banda_test_app/features/game/hud/bonuses/presentation/widgets/bonus_widget.dart';
import 'package:banda_test_app/features/game/hud/score/presentation/cubit/score_cubit.dart';
import 'package:banda_test_app/features/game/hud/score/presentation/widgets/score_widget.dart';
import 'package:banda_test_app/features/timer/presentation/widgets/timer_widget.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final BandaGame game;
  int gameRound = 0;

  @override
  void initState() {
    super.initState();
    game = BandaGame(
      onBonusActive: _bonusActivator,
      onBallLost: (score) => context.read<ScoreCubit>().addScore(score),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<MenuCubit, MenuState>(
      listener: (context, state) async {
        await state.whenOrNull(
          menuShow: (bestScore, currentScore) async {
            game.pauseEngine();

            final wantToRestart = await showDialog<bool>(
              context: context,
              barrierDismissible: false,
              builder: (context) => const Padding(
                padding: EdgeInsets.symmetric(vertical: 200, horizontal: 50),
                child: MenuWidget(),
              ),
            );

            if (wantToRestart == true) {
              if (!context.mounted) return;

              context.read<ScoreCubit>().init();
              context.read<MenuCubit>().hideMenu();
              game.resetGame();

              setState(() {
                gameRound++;
              });
            }
          },
        );
      },
      child: Column(
        children: [
          TimerWidget(
            key: ValueKey(gameRound),
            startSeconds: 180,
            onTimerFinished: () {
              final scoreState = context.read<ScoreCubit>().state;
              final scoreValue = scoreState.maybeWhen(
                loaded: (score) => score,
                orElse: () => 0,
              );
              context.read<MenuCubit>().showMenu(
                currentScore: scoreValue.toString(),
              );
            },
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: const Color.fromARGB(255, 20, 89, 146),
                      width: 0.7,
                    ),
                    color: const Color.fromARGB(170, 8, 7, 20),
                  ),
                  child: GameWidget(game: game),
                ),
                const Positioned(top: 15, right: 15, child: ScoreWidget()),
                const Positioned(top: 15, left: 15, child: BonusWidget()),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Row(
            spacing: 25,
            children: [
              Expanded(
                child: MoveButton(game: game, direction: MoveDirection.left),
              ),
              Expanded(
                child: MoveButton(game: game, direction: MoveDirection.right),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _bonusActivator(BonusType type) {
    if (!mounted) return;
    switch (type) {
      case BonusType.slowMotion:
        context.read<BonusCubit>().startSlowMotion();
      case BonusType.biggerBonus:
        context.read<BonusCubit>().startBiggerBonus();
      case BonusType.expandBall:
        context.read<BonusCubit>().startExpandBonus();
    }
  }
}
