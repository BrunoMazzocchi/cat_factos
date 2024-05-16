part of 'fact_bloc.dart';

@immutable
sealed class FactState extends Equatable {}

final class FactInitial extends FactState {
  @override
  List<Object?> get props => [];
}

final class FactLoading extends FactState {
  @override
  List<Object?> get props => [];
}

final class FactSuccess extends FactState {
  final CatFactEntity fact;

  FactSuccess({required this.fact});

  @override
  List<Object?> get props => [fact];
}


final class FactError extends FactState {
  final String error;

  FactError({required this.error});

  @override
  List<Object?> get props => [error];
}
