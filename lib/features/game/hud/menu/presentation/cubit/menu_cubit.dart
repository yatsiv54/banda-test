import 'package:banda_test_app/features/game/hud/menu/presentation/widgets/menu_widget.dart';
import 'package:banda_test_app/features/game/hud/score/data/score_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_state.dart';
part 'menu_cubit.freezed.dart';

class MenuCubit extends Cubit<MenuState> {
  MenuCubit() : super(const MenuState.initial());

  void showMenu({required String currentScore}) async {
    final repo = ScoreRepository();
    await repo.saveBestScore(int.parse(currentScore));
    final bestScoreInt = await repo.getBestScore();
    
    emit(MenuState.menuShow(
      bestScore: bestScoreInt.toString(), 
      currentScore: currentScore,
    ));
  }
  void hideMenu() {
    emit(const MenuState.initial());
  }
}
