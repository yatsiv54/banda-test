part of 'bonus_cubit.dart';

@freezed
class BonusState with _$BonusState {
  const factory BonusState.initial() = _Initial;
  const factory BonusState.bonusStarted({required BonusModel bonus}) = _BonusStarted;
  const factory BonusState.bonusEnded() = _BonusEnded;
}
