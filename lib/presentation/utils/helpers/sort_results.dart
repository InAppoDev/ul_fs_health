import '../../../domain/entities/walk_result_entity.dart';

int sortWalkTestResults(WalkResultEntity a, WalkResultEntity b) {
    if (a.date == null) {
      return -1;
    }
    if (b.date == null) {
      return 1;
    }
    return b.date!.compareTo(a.date!);
}
