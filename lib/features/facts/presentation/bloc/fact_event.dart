part of 'fact_bloc.dart';

@immutable
sealed class FactEvent {}

class FactGet implements FactEvent {}