import '../entities/walk_result_entity.dart';

abstract interface class WalkRepository {
  Future<void> saveWalkResults({
    required String userId,
    DateTime? date,
    double? distance,
    double? averageSpeed});

  Future<List<WalkResultEntity>> getWalkResults({
    required String userId
  });
}
