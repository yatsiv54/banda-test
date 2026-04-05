import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'score_state.dart';
part 'score_cubit.freezed.dart';

class ScoreCubit extends Cubit<ScoreState> {
  ScoreCubit() : super(ScoreState.initial());

  void init(){
    emit(ScoreState.loaded(score: 0));
  }

  void addScore(int plusScore) {
    state.maybeWhen(
      loaded: (score) => emit(ScoreState.loaded(score: score + plusScore)),
      orElse: () => emit(const ScoreState.loaded(score: 1)),
    );
  }
}
