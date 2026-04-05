import 'package:banda_test_app/features/game/hud/menu/presentation/cubit/menu_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 33, 62, 83).withAlpha(200),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.blueAccent),
        ),
        child: BlocBuilder<MenuCubit, MenuState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => SizedBox.shrink(),
              menuHide: () => SizedBox.shrink(),
              menuShow: (bestScore, currentScore) {
                return Column(
                  children: [
                    Text(
                      'GAME OVER',
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    SizedBox(height: 40),
                    Text(
                      'Best score',
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    Text(
                      bestScore,
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Last score',
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    Text(
                      currentScore,
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    Spacer(),
                    _PlayAgainButton(),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class _PlayAgainButton extends StatelessWidget {
  const _PlayAgainButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pop(true),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue.withAlpha(100),
          borderRadius: BorderRadius.circular(20),
          border: BoxBorder.all(color: Colors.blueAccent),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          child: Text(
            'Play again',
            style: Theme.of(context).textTheme.displayMedium,
          ),
        ),
      ),
    );
  }
}
