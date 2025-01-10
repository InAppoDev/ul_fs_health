
import '../../../l10n/localizations_utils.dart';

enum DifficultyLevel {none, easy, medium, hard, extra}

extension DiffExtension on DifficultyLevel {
  int get value => switch(this) {
    DifficultyLevel.none => 4,
    DifficultyLevel.easy => 3,
    DifficultyLevel.medium => 2,
    DifficultyLevel.hard => 1,
    DifficultyLevel.extra => 0
  };

  String get label => switch(this) {
    DifficultyLevel.none => '$value - ${appLocalizations.lefsDifficultyLevelText5}',
    DifficultyLevel.easy => '$value - ${appLocalizations.lefsDifficultyLevelText4}',
    DifficultyLevel.medium => '$value - ${appLocalizations.lefsDifficultyLevelText3}',
    DifficultyLevel.hard => '$value - ${appLocalizations.lefsDifficultyLevelText2}',
    DifficultyLevel.extra => '$value - ${appLocalizations.lefsDifficultyLevelText1}'
  };
}
