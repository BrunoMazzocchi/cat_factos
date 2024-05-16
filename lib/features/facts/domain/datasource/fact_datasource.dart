import 'package:catfact/features/facts/domain/enitties/cat_fact_entity.dart';

abstract class FactDatasource {
  Future<CatFactEntity> getFact ();
}