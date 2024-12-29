import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/walk_result_entity.dart';
import '../../../domain/repositories/user_repository.dart';
import '../../../domain/repositories/walk_repository.dart';

part 'result_event.dart';

part 'result_state.dart';

part 'result_bloc.freezed.dart';

class ResultBloc extends Bloc<ResultEvent, ResultState> {
  ResultBloc(this.userRepository, this.walkRepository) : super(const _Initial()) {
    on<_SaveResults>(_onSaveResults);
    on<_GetResults>(_onGetResults);
  }

  final UserRepository userRepository;
  final WalkRepository walkRepository;

  Future<void> _onSaveResults(_SaveResults event, Emitter<ResultState> emit) async {
    emit(state.copyWith(status: ResultStatus.loading));
    final currentUser = await userRepository.getLoggedInUser();
    try {
      await walkRepository.saveWalkResults(
          userId: currentUser?.id ?? '',
          date: event.date,
          distance: event.distance,
          averageSpeed: event.averageSpeed);
      emit(state.copyWith(status: ResultStatus.success));
    } catch (e) {
      emit(state.copyWith(status: ResultStatus.failure, errorText: e.toString()));
    }
  }

  Future<void> _onGetResults(_GetResults event, Emitter<ResultState> emit) async {


    print('UUUU');

    try {
      emit(state.copyWith(status: ResultStatus.loading));
      final currentUser = await userRepository.getLoggedInUser();
      final results = await walkRepository.getWalkResults(
        userId: currentUser?.id ?? '',
      );

      results.sort((a, b) {
        if (a.date == null) {
          return -1;
        }
        if (b.date == null) {
          return 1;
        }

        return b.date!.compareTo(a.date!);
      });
      emit(state.copyWith(status: ResultStatus.success, results: results));
    } catch (e) {
      emit(state.copyWith(status: ResultStatus.failure, errorText: e.toString()));
    }
  }
}
