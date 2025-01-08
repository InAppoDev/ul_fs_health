part of 'result_bloc.dart';



@freezed
class ResultEvent with _$ResultEvent {
  const factory ResultEvent.saveResults({
      required DateTime? date,
      required double? distance,
      required double? averageSpeed
  }) = _SaveResults;
  const factory ResultEvent.getResults() = _GetResults;
}

