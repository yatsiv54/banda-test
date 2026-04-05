import 'package:banda_test_app/features/game/hud/bonuses/data/models/bonus_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bonus_state.dart';
part 'bonus_cubit.freezed.dart';

class BonusCubit extends Cubit<BonusState> {
  BonusCubit() : super(BonusState.initial());

  void startSlowMotion() async {
    final bonus = BonusModel(
      duration: 5,
      type: BonusType.slowMotion,
      title: 'SLOWED',
    );
    emit(BonusState.bonusStarted(bonus: bonus));
    await Future.delayed(Duration(seconds: 5));
    emit(BonusState.bonusEnded());
  }

  void startBiggerBonus() async {
    emit(
      BonusState.bonusStarted(
        bonus: BonusModel(
          duration: 7,
          type: BonusType.biggerBonus,
          title: 'BIGGER',
        ),
      ),
    );
    await Future.delayed(Duration(seconds: 7));
    emit(BonusState.bonusEnded());
  }

  void startExpandBonus() async {
    emit(
      BonusState.bonusStarted(
        bonus: BonusModel(
          duration: 5,
          type: BonusType.expandBall,
          title: 'EXPANDED BALLS',
        ),
      ),
    );
    await Future.delayed(Duration(seconds: 5));
    emit(BonusState.bonusEnded());
  }
}
