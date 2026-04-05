import 'package:shared_preferences/shared_preferences.dart';

class ScoreRepository {
  static const String _bestScoreKey = 'best_score';

  Future<int> getBestScore() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(_bestScoreKey) ?? 0;
  }

  Future<void> saveBestScore(int score) async {
    final prefs = await SharedPreferences.getInstance();
    final currentBest = prefs.getInt(_bestScoreKey) ?? 0;
    
    if (score > currentBest) {
      await prefs.setInt(_bestScoreKey, score);
    }
  }
}