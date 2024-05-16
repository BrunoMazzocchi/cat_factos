import 'package:bloc/bloc.dart';
import 'package:catfact/features/facts/domain/enitties/cat_fact_entity.dart';
import 'package:catfact/features/facts/domain/repository/fact_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'fact_event.dart';
part 'fact_state.dart';

class FactBloc extends Bloc<FactEvent, FactState> {
  final FactRepository _factRepository;
  FactBloc({required FactRepository factRepository}) : _factRepository = factRepository, super(FactInitial()) {
    on<FactGet>((event, emit) async {
      try {
        emit(FactLoading());
        final fact = await _factRepository.getFactCat();
        emit(FactSuccess(fact: fact));
      } catch (error) {
        emit(FactError(error: error.toString()));
      }
    });
  }
}
