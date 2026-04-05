part of 'startup_cubit.dart';

@freezed
class StartupState with _$StartupState {
  const factory StartupState.initial() = _Initial;
  const factory StartupState.showGame() = _ShowGame;
  const factory StartupState.showContent(String content) = _ShowContent;
}