import '../entities/result_data_entity.dart';

abstract class SitToStandRepository {
  Future<void> saveTestResult({required ResultDataEntity entity});
}
