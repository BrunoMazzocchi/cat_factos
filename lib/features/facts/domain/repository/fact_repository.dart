import 'package:catfact/features/facts/domain/enitties/cat_fact_entity.dart';

abstract class FactRepository {
  Future<CatFactEntity> getFactCat();
}