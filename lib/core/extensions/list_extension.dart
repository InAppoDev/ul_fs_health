import '../../domain/entities/result_data_entity.dart';

extension ListResultDataEntityExtension on List<ResultDataEntity> {
  double findBestTime({double whenEmpty = 0.0}) => isEmpty
      ? whenEmpty
      : reduce((a, b) => (a.resultTime ?? 0.0) <= (b.resultTime ?? 0.0) ? a : b)
              .resultTime ??
          0.0;

  double findBestVelocity({double whenEmpty = 0.0}) => isEmpty
      ? whenEmpty
      : reduce((a, b) => (a.velocity ?? 0.0) <= (b.velocity ?? 0.0) ? a : b)
              .velocity ??
          0.0;
}
