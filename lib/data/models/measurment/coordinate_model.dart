import 'package:freezed_annotation/freezed_annotation.dart';
part 'coordinate_model.freezed.dart';

@freezed
class CoordinateModel with _$CoordinateModel {
  const factory CoordinateModel({
    @Default(0.0) double x,
    @Default(0.0) double y,
    @Default(0.0) double z,
  }) = _CoordinateModel;
}
