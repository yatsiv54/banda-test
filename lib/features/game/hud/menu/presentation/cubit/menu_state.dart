part of 'menu_cubit.dart';

@freezed
class MenuState with _$MenuState {
  const factory MenuState.initial() = _Initial;
  const factory MenuState.menuShow({
    required String bestScore,
    required String currentScore,
  }) = _MenuShow;
  const factory MenuState.menuHide() = _MenuHide;
}
