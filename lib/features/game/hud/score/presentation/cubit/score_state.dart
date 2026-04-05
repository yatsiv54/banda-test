part of 'score_cubit.dart';

@freezed
class ScoreState with _$ScoreState {
  const factory ScoreState.initial() = _Initial;
  const factory ScoreState.loaded({
    required int score,
  }) = _Loaded;
}
