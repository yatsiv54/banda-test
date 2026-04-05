import 'package:banda_test_app/features/game/hud/bonuses/data/models/bonus_model.dart';
import 'package:banda_test_app/features/game/hud/bonuses/presentation/cubit/bonus_cubit.dart';
import 'package:banda_test_app/features/game/hud/score/presentation/cubit/score_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BonusWidget extends StatefulWidget {
  const BonusWidget({super.key});

  @override
  State<BonusWidget> createState() => _BonusWidgetState();
}

class _BonusWidgetState extends State<BonusWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    _controller = AnimationController(vsync: this);

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BonusCubit, BonusState>(
      listener: (context, state) {
        state.whenOrNull(
          bonusStarted: (bonus) {
            _controller.duration = Duration(seconds: bonus.duration);
            _controller.reverse(from: 1);
          },
        );
      },
      builder: (context, state) {
        return state.when(
          initial: () => SizedBox.shrink(),
          bonusEnded: () => SizedBox.shrink(),
          bonusStarted: (bonus) => Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.green.withAlpha(200),
                  blurRadius: 5,
                  spreadRadius: 1,
                ),
              ],
              color: const Color.fromARGB(
                255,
                16,
                63,
                102,
              ).withValues(alpha: 0.3),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: const Color.fromARGB(255, 20, 89, 146),
                width: 1,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: AnimatedBuilder(
                animation: _controller,
                builder: (context, child) => Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned.fill(
                      child: FractionallySizedBox(
                        alignment: Alignment.centerLeft,
                        widthFactor: _controller.value,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.green.withValues(alpha: 0.7),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 13,
                        vertical: 5,
                      ),
                      child: Text(
                        bonus.title,
                        style: Theme.of(context).textTheme.displayMedium!
                            .copyWith(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
