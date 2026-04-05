import 'package:banda_test_app/features/game/hud/score/presentation/cubit/score_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScoreWidget extends StatefulWidget {
  const ScoreWidget({super.key});

  @override
  State<ScoreWidget> createState() => _ScoreWidgetState();
}

class _ScoreWidgetState extends State<ScoreWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 16, 63, 102).withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(8),
        border: BoxBorder.all(
          color: const Color.fromARGB(255, 20, 89, 146),
          width: 1,
        ),
      ),
      child: BlocBuilder<ScoreCubit, ScoreState>(
        bloc: context.read<ScoreCubit>()..init(),
        builder: (context, state) {
          return state.when(
            initial: () => CircularProgressIndicator(),
            loaded: (score) => Text(
              'SCORE: $score',
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          );
        },
      ),
    );
  }
}
