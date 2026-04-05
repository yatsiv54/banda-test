enum BonusType { slowMotion, biggerBonus, expandBall }


class BonusModel {
  final int duration;
  final BonusType type;
  final String title;

  BonusModel({
    required this.duration,
    required this.type, required this.title,
  });

}