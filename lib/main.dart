import 'package:banda_test_app/core/theme/theme.dart';
import 'package:banda_test_app/features/start_up/presentation/pages/splash_page.dart';
import 'package:banda_test_app/features/home/presentation/pages/home_page.dart';
import 'package:banda_test_app/features/background/presentation/animated_background.dart';
import 'package:banda_test_app/features/game/hud/bonuses/presentation/cubit/bonus_cubit.dart';
import 'package:banda_test_app/features/game/hud/menu/presentation/cubit/menu_cubit.dart';
import 'package:banda_test_app/features/game/hud/score/presentation/cubit/score_cubit.dart';
import 'package:banda_test_app/features/start_up/presentation/cubit/startup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ScoreCubit()),
        BlocProvider(create: (context) => BonusCubit()),
        BlocProvider(create: (context) => MenuCubit()),
        BlocProvider(create: (context) => StartupCubit()..checkFirstLaunch()),
      ],
      child: MaterialApp(
        theme: theme,
        debugShowCheckedModeBanner: false,
        home: const AnimatedScaffold(
          child: Padding(
            padding: EdgeInsets.only(
              top: 90,
              left: 20,
              right: 20,
              bottom: 50,
            ),
            child: RootPage(),
          ),
        ),
      ),
    );
  }
}

class RootPage extends StatelessWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StartupCubit, StartupState>(
      builder: (context, state) {
        return state.maybeWhen(
          showGame: () => const HomePage(),
          orElse: () => const SplashPage(),
        );
      },
    );
  }
}