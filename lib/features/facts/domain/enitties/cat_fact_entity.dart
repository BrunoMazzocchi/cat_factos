import 'package:catfact/features/facts/data/models/cat_fact_model.dart';
import 'package:equatable/equatable.dart';

class CatFactEntity extends Equatable {
  final String fact;
  final int length;

  const CatFactEntity({
    required this.fact,
    required this.length,
});

  @override
  List<Object?> get props => [fact, length];

  factory CatFactEntity.fromModel(CatFactModel model) {
    return CatFactEntity(
      length: model.length,
      fact: model.fact,
    );
  }
}